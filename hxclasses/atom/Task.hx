package atom;

@:realPath("atom.Task") @:native("Task") extern class Task {
	function new(taskPath : String) : Void;
	function on(eventName : String, callback : haxe.Function) : Disposable;
	function send(message : Dynamic) : Void;
	function start(args : Dynamic, callback : haxe.Function) : Void;
	function terminate() : Void;
	static function once(taskPath : String, args : Dynamic) : Task;
}
