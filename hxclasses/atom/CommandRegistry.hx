package atom;

@:realPath("atom.CommandRegistry") @:native("CommandRegistry") extern class CommandRegistry {
	function add() : Disposable;
	function dispatch(target : Dynamic, commandName : String) : Void;
	function findCommands(params : Dynamic<Dynamic>) : Array<Dynamic>;
}
