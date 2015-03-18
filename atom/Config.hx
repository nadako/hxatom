package atom;
@:native("Config") extern class Config {
	function observe(keyPath:String, options:Dynamic<Dynamic>, callback:haxe.Constraints.Function):atom.Disposable;
	function onDidChange(keyPath:String, optional:Dynamic<Dynamic>, callback:haxe.Constraints.Function):atom.Disposable;
	function get(keyPath:String, options:Dynamic<Dynamic>):Dynamic;
	function getAll(keyPath:String, options:Dynamic<Dynamic>):Array<Dynamic>;
	function set(keyPath:String, value:Dynamic, options:Dynamic<Dynamic>):Bool;
	function unset(keyPath:String, options:Dynamic<Dynamic>):Void;
	function getSources():Void;
	function getSchema(keyPath:String):Dynamic;
	function getUserConfigPath():Void;
	function transact(callback:haxe.Constraints.Function):Void;
}