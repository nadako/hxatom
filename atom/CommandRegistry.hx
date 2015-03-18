package atom;
@:native("CommandRegistry") extern class CommandRegistry {
	function add():atom.Disposable;
	function findCommands(params:Dynamic<Dynamic>):Array<Dynamic>;
	function dispatch(target:Dynamic, commandName:String):Void;
}