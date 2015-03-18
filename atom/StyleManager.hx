package atom;
@:native("StyleManager") extern class StyleManager {
	function observeStyleElements(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidAddStyleElement(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidRemoveStyleElement(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidUpdateStyleElement(callback:haxe.Constraints.Function):atom.Disposable;
	function getStyleElements():Void;
	function getUserStyleSheetPath():String;
}