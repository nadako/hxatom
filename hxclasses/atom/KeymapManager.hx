package atom;

@:realPath("atom.KeymapManager") @:native("KeymapManager") extern class KeymapManager {
	function new(options : Dynamic<Dynamic>) : Void;
	function add(source : String, bindings : Dynamic<Dynamic>) : Void;
	function destroy() : Void;
	function findKeyBindings(params : Dynamic<Dynamic>) : Array<Dynamic>;
	function getKeyBindings() : Array<Dynamic>;
	function getPartialMatchTimeout() : Float;
	function handleKeyboardEvent(event : Dynamic) : Void;
	function keystrokeForKeyboardEvent(event : Dynamic) : String;
	function loadKeymap(path : String, options : Dynamic<Dynamic>) : Void;
	function onDidFailToMatchBinding(callback : haxe.Function) : Disposable;
	function onDidFailToReadFile(callback : haxe.Function) : Disposable;
	function onDidMatchBinding(callback : haxe.Function) : Disposable;
	function onDidPartiallyMatchBindings(callback : haxe.Function) : Disposable;
	function watchKeymap(path : String) : Void;
	static function buildKeydownEvent(key : Dynamic, options : Dynamic<Dynamic>) : Void;
}
