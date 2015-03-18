package atom;

@:realPath("atom.Emitter") @:native("Emitter") extern class Emitter {
	function new() : Void;
	function dispose() : Void;
	function emit(eventName : Dynamic, value : Dynamic) : Void;
	function on(eventName : String, handler : haxe.Function) : Disposable;
	function preempt(eventName : String, handler : haxe.Function) : Disposable;
}
