/**
	Atom global for dealing with packages, themes, menus, and the window.
**/
package atom;
@:native("Atom") extern class Atom {
	/**
		A {CommandRegistry} instance 
	**/
	var commands : Dynamic;
	/**
		A {Config} instance 
	**/
	var config : Dynamic;
	/**
		A {Clipboard} instance 
	**/
	var clipboard : Dynamic;
	/**
		A {ContextMenuManager} instance 
	**/
	var contextMenu : Dynamic;
	/**
		A {MenuManager} instance 
	**/
	var menu : Dynamic;
	/**
		A {KeymapManager} instance 
	**/
	var keymaps : Dynamic;
	/**
		A {TooltipManager} instance 
	**/
	var tooltips : Dynamic;
	/**
		A {Project} instance 
	**/
	var project : Dynamic;
	/**
		A {GrammarRegistry} instance 
	**/
	var grammars : Dynamic;
	/**
		A {PackageManager} instance 
	**/
	var packages : Dynamic;
	/**
		A {ThemeManager} instance 
	**/
	var themes : Dynamic;
	/**
		A {StyleManager} instance 
	**/
	var styles : Dynamic;
	/**
		A {DeserializerManager} instance 
	**/
	var deserializers : Dynamic;
	/**
		A {ViewRegistry} instance 
	**/
	var views : Dynamic;
	/**
		A {Workspace} instance 
	**/
	var workspace : Dynamic;
	/**
		Invoke the given callback whenever {::beep} is called.
	**/
	function onDidBeep(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when there is an unhandled error, but
		before the devtools pop open
	**/
	function onWillThrowError(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback whenever there is an unhandled error.
	**/
	function onDidThrowError(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Is the current window in development mode? 
	**/
	function inDevMode():Void;
	/**
		Is the current window in safe mode? 
	**/
	function inSafeMode():Void;
	/**
		Is the current window running specs? 
	**/
	function inSpecMode():Void;
	/**
		Get the version of the Atom application.
	**/
	function getVersion():String;
	/**
		Determine whether the current version is an official release. 
	**/
	function isReleasedVersion():Void;
	/**
		Get the time taken to completely load the current window.
	**/
	function getWindowLoadTime():Float;
	/**
		Open a new Atom window using the given options.
	**/
	function open(options:Dynamic<Dynamic>):Void;
	/**
		Show the native dialog to prompt the user to select a folder.
	**/
	function pickFolder(callback:haxe.Constraints.Function):Void;
	/**
		Close the current window. 
	**/
	function close():Void;
	/**
		Get the size of current window.
	**/
	function getSize():Dynamic<Dynamic>;
	/**
		Set the size of current window.
	**/
	function setSize(width:Float, height:Float):Void;
	/**
		Get the position of current window.
	**/
	function getPosition():Dynamic<Dynamic>;
	/**
		Set the position of current window.
	**/
	function setPosition(x:Float, y:Float):Void;
	/**
		Move current window to the center of the screen. 
	**/
	function center():Void;
	/**
		Focus the current window. 
	**/
	function focus():Void;
	/**
		Show the current window. 
	**/
	function show():Void;
	/**
		Hide the current window. 
	**/
	function hide():Void;
	/**
		Reload the current window. 
	**/
	function reload():Void;
	function isMaximixed():Bool;
	/**
		Is the current window in full screen mode? 
	**/
	function isFullScreen():Void;
	/**
		Set the full screen state of the current window. 
	**/
	function setFullScreen():Void;
	/**
		Toggle the full screen state of the current window. 
	**/
	function toggleFullScreen():Void;
	/**
		Visually and audibly trigger a beep. 
	**/
	function beep():Void;
	/**
		A flexible way to open a dialog akin to an alert dialog.
	**/
	function confirm(options:Dynamic<Dynamic>):Float;
	/**
		Open the dev tools for the current window. 
	**/
	function openDevTools():Void;
	/**
		Toggle the visibility of the dev tools for the current window. 
	**/
	function toggleDevTools():Void;
	/**
		Execute code in dev tools. 
	**/
	function executeJavaScriptInDevTools():Void;
}