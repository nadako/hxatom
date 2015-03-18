import haxe.DynamicAccess;
import haxe.macro.Context;
import haxe.macro.Expr;
using haxe.macro.Tools;

typedef AtomApi = {
    classes:DynamicAccess<AtomClass>,
}

typedef AtomClass = {
    name:String,
    superClass:String,
    classMethods:Array<AtomMethod>,
    instanceMethods:Array<AtomMethod>,
    classProperties:Array<AtomProperty>,
    instanceProperties:Array<AtomProperty>,
}

typedef AtomMethod = {
    name:String,
    arguments:Array<AtomArg>,
    returnValues:Array<AtomReturn>,
}

typedef AtomArg = {
    name:String,
    type:String,
    isOptional:Bool,
}

typedef AtomReturn = {
    type:String,
}

typedef AtomProperty = {
    name:String,

}

class Convert {
    static var pos = Context.makePosition({min: 0, max: 0, file: "atom-api"});

    static function main() {
        var api:AtomApi = haxe.Json.parse(sys.io.File.getContent("atom-api.json"));
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
                    if (f.name == "constructor") f.name = "new";
                    fields.push(f);
                }

            Context.defineType({
                pos: pos,
                pack: ["atom"],
                name: cls.name,
                isExtern: true,
                kind: TDClass(),
                fields: fields,
                meta: [
                    {name: ":native", params: [macro $v{cls.name}], pos: pos}
                ]
            });
        }
    }

    static function convertProperty(p:AtomProperty):Field {
        return {
            pos: pos,
            name: p.name,
            kind: FVar(macro : Dynamic),
        };
    }

    static function convertMethod(m:AtomMethod):Field {
        var returnType = macro : Void;
        if (m.returnValues != null)
            returnType = makeEither([for (r in m.returnValues) r.type]);

        var args:Array<FunctionArg> = [];
        if (m.arguments != null) {
            for (a in m.arguments)
                args.push({name: a.name, type: convertType(a.type)});
        }

        return {
            pos: pos,
            name: m.name,
            kind: FFun({
                args: args,
                ret: returnType,
                expr: null
            }),
            access: []
        };
    }

    static function convertType(type:String):ComplexType {
        return switch (type) {
            case null:
                macro : Dynamic;
            case "Function":
                macro : haxe.Constraints.Function;
            case "String":
                macro : String;
            case "Boolean" | "Bool":
                macro : Bool;
            case "Number":
                macro : Float;
            case "Object" | "Package":
                macro : Dynamic<Dynamic>;
            case "RegExp":
                macro : js.RegExp;
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
            var ct = convertType(t);
            var s = ct.toString();
            if (s == "Dynamic")
                return ct;
            uniq[s] = ct;
        }
        var converted = Lambda.array(uniq);
        return Lambda.fold(converted.slice(1), function(a, b) return macro : haxe.extern.EitherType<$a, $b>, converted[0]);
    }
}
