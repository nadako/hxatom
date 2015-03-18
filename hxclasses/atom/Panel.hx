package atom;

@:realPath("atom.Panel") @:native("Panel") extern class Panel {
	function destroy() : Void;
	function getItem() : Dynamic;
	function getPriority() : Float;
	function hide() : Void;
	function isVisible() : Bool;
	function onDidChangeVisible(callback : haxe.Function) : Disposable;
	function onDidDestroy(callback : haxe.Function) : Disposable;
	function show() : Void;
}
