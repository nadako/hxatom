/**
	Associates listener functions with commands in a
	context-sensitive way using CSS selectors. You can access a global instance of
	this class via `atom.commands`, and commands registered there will be
	presented in the command palette.
**/
package atom;
@:native("CommandRegistry") extern class CommandRegistry {
	/**
		Add one or more command listeners associated with a selector.
	**/
	function add():atom.Disposable;
	/**
		Find all registered commands matching a query.
	**/
	function findCommands(params:Dynamic<Dynamic>):Array<Dynamic>;
	/**
		Simulate the dispatch of a command on a DOM node.
	**/
	function dispatch(target:Dynamic, commandName:String):Dynamic;
}