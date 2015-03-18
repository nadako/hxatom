package atom;
@:native("Decoration") extern class Decoration {
	function destroy():Void;
	function onDidChangeProperties(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	function getId():Void;
	function getMarker():atom.Decoration;
	function getProperties():atom.Decoration;
	function setProperties(newProperties:Dynamic<Dynamic>):Void;
}