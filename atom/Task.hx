package atom;
@:native("Task") extern class Task {
	static function once(taskPath:String, args:Dynamic):atom.Task;
	function new(taskPath:String):Void;
	function start(args:Dynamic, callback:haxe.Constraints.Function):Void;
	function send(message:Dynamic):Void;
	function on(eventName:String, callback:haxe.Constraints.Function):atom.Disposable;
	function terminate():Void;
}