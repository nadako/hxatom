import haxe.DynamicAccess;
import haxe.macro.Expr;
using haxe.macro.Tools;
using StringTools;

typedef AtomApi = {
    classes:DynamicAccess<AtomClass>,
}

typedef Desc = {
    summary:String,
    description:String,
}

typedef AtomClass = {
    >Desc,
    name:String,
    superClass:String,
    classMethods:Array<AtomMethod>,
    instanceMethods:Array<AtomMethod>,
    classProperties:Array<AtomProperty>,
    instanceProperties:Array<AtomProperty>,
}

typedef AtomField = {
    >Desc,
    name:String,
}

typedef AtomMethod = {
    >AtomField,
    arguments:Array<AtomArg>,
    returnValues:Array<AtomReturn>,
}

typedef AtomArg = {
    name:String,
    type:String,
    isOptional:Bool,
    children:Array<AtomArg>,
}

typedef AtomReturn = {
    type:String,
}

typedef AtomProperty = {
    >AtomField,
}

class Convert {
    static var pos =  {min: 0, max: 0, file: ""};

    static function main() {
        var api:AtomApi = haxe.Json.parse(sys.io.File.getContent(Sys.args()[0]));
        sys.FileSystem.createDirectory("atom");
        var printer = new haxe.macro.Printer();
        for (key in api.classes.keys()) {
            var cls = api.classes[key];
            var fields:Array<Field> = [];

            for (p in cls.classProperties) {
                var f = convertProperty(p);
                f.access.push(AStatic);
                fields.push(f);
            }

            for (p in cls.instanceProperties) {
                fields.push(convertProperty(p));
            }

            for (m in cls.classMethods) {
                var f = convertMethod(m);
                f.access.push(AStatic);
                fields.push(f);
            }

            if (cls.instanceMethods != null)
                for (m in cls.instanceMethods) {
                    var f = convertMethod(m);
                    if (f.name == "constructor")
                        f.name = "new";
                    fields.push(f);
                }

            var sup = null;
            if (cls.superClass != null && cls.superClass != "Model") {
                sup = {pack: ["atom"], name: cls.superClass};
            }

            var s = printer.printTypeDefinition({
                pos: pos,
                pack: ["atom"],
                name: cls.name,
                isExtern: true,
                kind: TDClass(sup),
                fields: fields,
                meta: [
                    {name: ":native", params: [{expr: EConst(CString(cls.name)), pos: pos}], pos: pos}
                ]
            });

            if (cls.summary != null) {
                s = "/**\n\t" + cls.summary.replace("\n", "\n\t") + "\n**/\n" + s;
            }

            sys.io.File.saveContent("atom/" + cls.name + ".hx", s);
        }
    }

    static function convertProperty(p:AtomProperty):Field {
        return {
            pos: pos,
            name: p.name,
            kind: FVar(macro : Dynamic),
            doc: p.summary,
        };
    }

    static function convertMethod(m:AtomMethod):Field {
        var returnType = macro : Dynamic;
        if (m.name == "constructor")
            returnType = macro : Void;
        if (m.returnValues != null)
            returnType = makeEither([for (r in m.returnValues) r.type]);

        var args:Array<FunctionArg> = [];
        if (m.arguments != null) {
            for (a in m.arguments)
                args.push({name: a.name, type: convertType(a.type, a.children)});
        }

        return {
            pos: pos,
            name: m.name,
            kind: FFun({
                args: args,
                ret: returnType,
                expr: null
            }),
            access: [],
            doc: m.summary,
        };
    }

    static var kwds = ["class"];
    static function escapeName(n:String):String {
        return if (kwds.indexOf(n) != -1) n + "_" else n; // TODO: we have to make some abstract for that
    }

    static function convertType(type:String, children:Array<AtomArg>):ComplexType {
        return switch (type) {
            case null:
                macro : Dynamic;
            case "Function":
                if (children != null) {
                    var args = [for (child in children) convertType(child.type, child.children)];
                    var ret = macro : Dynamic;
                    TFunction(args, ret);
                } else {
                    macro : haxe.Constraints.Function;
                }
            case "String":
                macro : String;
            case "Boolean" | "Bool":
                macro : Bool;
            case "Number":
                macro : Float;
            case "Object":
                if (children != null) {
                    var fields:Array<Field> = [];
                    for (child in children) {
                        fields.push({
                            pos: pos,
                            name: escapeName(child.name),
                            kind: FVar(convertType(child.type, child.children))
                        });
                    }
                    TAnonymous(fields);
                } else {
                    macro : Dynamic<Dynamic>;
                }
            case "Package" | "KeyBinding":
                macro : Dynamic<Dynamic>;
            case "RegExp":
                macro : js.RegExp;
            case "Error":
                macro : js.Error;
            case "Promise":
                macro : js.Promise<Dynamic>;
            case "Array" | "array":
                macro : Array<Dynamic>;
            default:
                TPath({pack: ["atom"], name: type});
        }
    }

    static function makeEither(types:Array<String>):ComplexType {
        var uniq = new Map();
        for (t in types) {
            var ct = convertType(t, null);
            var s = ct.toString();
            if (s == "Dynamic")
                return ct;
            uniq[s] = ct;
        }
        var converted = Lambda.array(uniq);
        return Lambda.fold(converted.slice(1), function(a, b) return macro : haxe.extern.EitherType<$a, $b>, converted[0]);
    }
}
