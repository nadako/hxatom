package atom;

@:realPath("atom.StyleManager") @:native("StyleManager") extern class StyleManager {
	function getStyleElements() : Void;
	function getUserStyleSheetPath() : String;
	function observeStyleElements(callback : haxe.Function) : Disposable;
	function onDidAddStyleElement(callback : haxe.Function) : Disposable;
	function onDidRemoveStyleElement(callback : haxe.Function) : Disposable;
	function onDidUpdateStyleElement(callback : haxe.Function) : Disposable;
}
