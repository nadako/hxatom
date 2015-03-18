package atom;

@:realPath("atom.Decoration") @:native("Decoration") extern class Decoration {
	function destroy() : Void;
	function getId() : Void;
	function getMarker() : Decoration;
	function getProperties() : Decoration;
	function onDidChangeProperties(callback : haxe.Function) : Disposable;
	function onDidDestroy(callback : haxe.Function) : Disposable;
	function setProperties(newProperties : Dynamic<Dynamic>) : Void;
}
