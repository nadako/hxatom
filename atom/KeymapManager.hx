/**
	Allows commands to be associated with keystrokes in a
	context-sensitive way. In Atom, you can access a global instance of this
	object via `atom.keymap`.
**/
package atom;
@:native("KeymapManager") extern class KeymapManager {
	/**
		Create a keydown DOM event for testing purposes.
	**/
	static function buildKeydownEvent(key:Dynamic, options:Dynamic<Dynamic>):Dynamic;
	/**
		Create a new KeymapManager.
	**/
	function new(options:Dynamic<Dynamic>):Void;
	/**
		Unwatch all watched paths. 
	**/
	function destroy():Dynamic;
	/**
		Invoke the given callback when one or more keystrokes completely
		match a key binding.
	**/
	function onDidMatchBinding(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when one or more keystrokes partially
		match a binding.
	**/
	function onDidPartiallyMatchBindings(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when one or more keystrokes fail to match
		any bindings.
	**/
	function onDidFailToMatchBinding(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a keymap file not able to be loaded.
	**/
	function onDidFailToReadFile(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Add sets of key bindings grouped by CSS selector.
	**/
	function add(source:String, bindings:Dynamic<Dynamic>):Dynamic;
	/**
		Get all current key bindings.
	**/
	function getKeyBindings():Array<Dynamic>;
	/**
		Get the key bindings for a given command and optional target.
	**/
	function findKeyBindings(params:Dynamic<Dynamic>):Array<Dynamic>;
	/**
		Load the key bindings from the given path.
	**/
	function loadKeymap(path:String, options:Dynamic<Dynamic>):Dynamic;
	/**
		Cause the keymap to reload the key bindings file at the given path
		whenever it changes.
	**/
	function watchKeymap(path:String):Dynamic;
	/**
		Dispatch a custom event associated with the matching key binding for
		the given `KeyboardEvent` if one can be found.
	**/
	function handleKeyboardEvent(event:Dynamic):Dynamic;
	/**
		Translate a keydown event to a keystroke string.
	**/
	function keystrokeForKeyboardEvent(event:Dynamic):String;
	/**
		Get the number of milliseconds allowed before pending states caused
		by partial matches of multi-keystroke bindings are terminated.
	**/
	function getPartialMatchTimeout():Float;
}