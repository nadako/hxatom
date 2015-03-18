package atom;
@:native("Grammar") extern class Grammar {
	function onDidUpdate(callback:haxe.Constraints.Function):atom.Disposable;
	function tokenizeLines(text:String):Array<Dynamic>;
	function tokenizeLine(line:String, ruleStack:Array<Dynamic>, firstLine:Bool):Dynamic<Dynamic>;
}