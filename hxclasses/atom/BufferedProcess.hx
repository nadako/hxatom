package atom;

@:realPath("atom.BufferedProcess") @:native("BufferedProcess") extern class BufferedProcess {
	function new(options : Dynamic<Dynamic>) : Void;
	function kill() : Void;
	function onWillThrowError(callback : haxe.Function) : Disposable;
}
