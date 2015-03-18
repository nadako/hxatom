package atom;
@:native("Emitter") extern class Emitter {
	function new():Void;
	function dispose():Void;
	function on(eventName:String, handler:haxe.Constraints.Function):atom.Disposable;
	function preempt(eventName:String, handler:haxe.Constraints.Function):atom.Disposable;
	function emit(eventName:Dynamic, value:Dynamic):Void;
}