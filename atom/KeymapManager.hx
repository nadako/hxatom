package atom;
@:native("KeymapManager") extern class KeymapManager {
	static function buildKeydownEvent(key:Dynamic, options:Dynamic<Dynamic>):Void;
	function new(options:Dynamic<Dynamic>):Void;
	function destroy():Void;
	function onDidMatchBinding(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidPartiallyMatchBindings(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidFailToMatchBinding(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidFailToReadFile(callback:haxe.Constraints.Function):atom.Disposable;
	function add(source:String, bindings:Dynamic<Dynamic>):Void;
	function getKeyBindings():Array<Dynamic>;
	function findKeyBindings(params:Dynamic<Dynamic>):Array<Dynamic>;
	function loadKeymap(path:String, options:Dynamic<Dynamic>):Void;
	function watchKeymap(path:String):Void;
	function handleKeyboardEvent(event:Dynamic):Void;
	function keystrokeForKeyboardEvent(event:Dynamic):String;
	function getPartialMatchTimeout():Float;
}