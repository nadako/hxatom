/**
	Provides a registry for menu items that you'd like to appear in the
	application menu.
**/
package atom;
@:native("MenuManager") extern class MenuManager {
	/**
		Adds the given items to the application menu.
	**/
	function add(items:Array<Dynamic>):atom.Disposable;
	/**
		Refreshes the currently visible menu. 
	**/
	function update():Void;
}