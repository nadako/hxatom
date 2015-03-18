package atom;

@:realPath("atom.ThemeManager") @:native("ThemeManager") extern class ThemeManager {
	function getActiveThemeNames() : Void;
	function getActiveThemes() : Void;
	function getEnabledThemeNames() : Dynamic;
	function getLoadedThemeNames() : Void;
	function getLoadedThemes() : Void;
	function onDidChangeActiveThemes(callback : haxe.Function) : Void;
}
