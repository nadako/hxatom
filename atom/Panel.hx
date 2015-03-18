package atom;
@:native("Panel") extern class Panel {
	function destroy():Void;
	function onDidChangeVisible(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	function getItem():Dynamic;
	function getPriority():Float;
	function isVisible():Bool;
	function hide():Void;
	function show():Void;
}