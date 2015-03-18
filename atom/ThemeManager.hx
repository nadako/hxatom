package atom;
@:native("ThemeManager") extern class ThemeManager {
	function onDidChangeActiveThemes(callback:haxe.Constraints.Function):Void;
	function getLoadedThemeNames():Void;
	function getLoadedThemes():Void;
	function getActiveThemeNames():Void;
	function getActiveThemes():Void;
	function getEnabledThemeNames():Dynamic;
}