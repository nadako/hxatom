package atom;

@:realPath("atom.Grammar") @:native("Grammar") extern class Grammar {
	function onDidUpdate(callback : haxe.Function) : Disposable;
	function tokenizeLine(line : String, ruleStack : Array<Dynamic>, firstLine : Bool) : Dynamic<Dynamic>;
	function tokenizeLines(text : String) : Array<Dynamic>;
}
