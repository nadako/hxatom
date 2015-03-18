package atom;
@:native("GrammarRegistry") extern class GrammarRegistry {
	function onDidAddGrammar(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidUpdateGrammar(callback:haxe.Constraints.Function):atom.Disposable;
	function getGrammars():Array<Dynamic>;
	function grammarForScopeName(scopeName:String):atom.Grammar;
	function addGrammar(grammar:atom.Grammar):atom.Disposable;
	function removeGrammarForScopeName(scopeName:String):atom.Grammar;
	function readGrammarSync(grammarPath:String):atom.Grammar;
	function readGrammar(grammarPath:String, callback:haxe.Constraints.Function):Dynamic;
	function loadGrammarSync(grammarPath:String):atom.Grammar;
	function loadGrammar(grammarPath:String, callback:haxe.Constraints.Function):Dynamic;
	function grammarOverrideForPath(filePath:String):atom.Grammar;
	function setGrammarOverrideForPath(filePath:String, scopeName:String):atom.Grammar;
	function clearGrammarOverrideForPath(filePath:String):Dynamic;
	function clearGrammarOverrides():Dynamic;
	function selectGrammar(filePath:String, fileContents:String):atom.Grammar;
}