package atom;

@:realPath("atom.Config") @:native("Config") extern class Config {
	function get(keyPath : String, options : Dynamic<Dynamic>) : Dynamic;
	function getAll(keyPath : String, options : Dynamic<Dynamic>) : Array<Dynamic>;
	function getSchema(keyPath : String) : Dynamic;
	function getSources() : Void;
	function getUserConfigPath() : Void;
	function observe(keyPath : String, options : Dynamic<Dynamic>, callback : haxe.Function) : Disposable;
	function onDidChange(keyPath : String, optional : Dynamic<Dynamic>, callback : haxe.Function) : Disposable;
	function set(keyPath : String, value : Dynamic, options : Dynamic<Dynamic>) : Bool;
	function transact(callback : haxe.Function) : Void;
	function unset(keyPath : String, options : Dynamic<Dynamic>) : Void;
}
