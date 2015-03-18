package atom;
@:native("BufferedProcess") extern class BufferedProcess {
	function new(options:Dynamic<Dynamic>):Void;
	function onWillThrowError(callback:haxe.Constraints.Function):atom.Disposable;
	function kill():Void;
}