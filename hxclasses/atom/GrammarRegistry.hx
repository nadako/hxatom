package atom;

@:realPath("atom.GrammarRegistry") @:native("GrammarRegistry") extern class GrammarRegistry {
	function addGrammar(grammar : Grammar) : Disposable;
	function clearGrammarOverrideForPath(filePath : String) : Dynamic;
	function clearGrammarOverrides() : Dynamic;
	function getGrammars() : Array<Dynamic>;
	function grammarForScopeName(scopeName : String) : Grammar;
	function grammarOverrideForPath(filePath : String) : Grammar;
	function loadGrammar(grammarPath : String, callback : haxe.Function) : Dynamic;
	function loadGrammarSync(grammarPath : String) : Grammar;
	function onDidAddGrammar(callback : haxe.Function) : Disposable;
	function onDidUpdateGrammar(callback : haxe.Function) : Disposable;
	function readGrammar(grammarPath : String, callback : haxe.Function) : Dynamic;
	function readGrammarSync(grammarPath : String) : Grammar;
	function removeGrammarForScopeName(scopeName : String) : Grammar;
	function selectGrammar(filePath : String, fileContents : String) : Grammar;
	function setGrammarOverrideForPath(filePath : String, scopeName : String) : Grammar;
}
