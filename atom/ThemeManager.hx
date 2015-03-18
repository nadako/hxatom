/**
	Handles loading and activating available themes.
**/
package atom;
@:native("ThemeManager") extern class ThemeManager {
	/**
		Invoke `callback` when style sheet changes associated with
		updating the list of active themes have completed.
	**/
	function onDidChangeActiveThemes(callback:haxe.Constraints.Function):Void;
	/**
		Get an array of all the loaded theme names. 
	**/
	function getLoadedThemeNames():Void;
	/**
		Get an array of all the loaded themes. 
	**/
	function getLoadedThemes():Void;
	/**
		Get an array of all the active theme names. 
	**/
	function getActiveThemeNames():Void;
	/**
		Get an array of all the active themes. 
	**/
	function getActiveThemes():Void;
	/**
		Get the enabled theme names from the config.
	**/
	function getEnabledThemeNames():Dynamic;
}