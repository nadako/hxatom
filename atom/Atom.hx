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
		A {NotificationManager} instance 
	**/
	var notifications : Dynamic;
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
	function onWillThrowError(callback:{ var originalError : Dynamic<Dynamic>; var message : String; var url : String; var line : Float; var column : Float; var preventDefault : haxe.Constraints.Function; } -> Dynamic):atom.Disposable;
	/**
		Invoke the given callback whenever there is an unhandled error.
	**/
	function onDidThrowError(callback:{ var originalError : Dynamic<Dynamic>; var message : String; var url : String; var line : Float; var column : Float; } -> Dynamic):atom.Disposable;
	function inDevMode():Bool;
	function inSafeMode():Bool;
	function inSpecMode():Bool;
	/**
		Get the version of the Atom application.
	**/
	function getVersion():String;
	function isReleasedVersion():Bool;
	/**
		Get the time taken to completely load the current window.
	**/
	function getWindowLoadTime():Float;
	/**
		Open a new Atom window using the given options.
	**/
	function open(options:{ var pathsToOpen : Array<Dynamic>; var newWindow : Bool; var devMode : Bool; var safeMode : Bool; }):Dynamic;
	/**
		Prompt the user to select one or more folders.
	**/
	function pickFolder(callback:Array<Dynamic> -> Dynamic):Dynamic;
	/**
		Close the current window. 
	**/
	function close():Dynamic;
	/**
		Get the size of current window.
	**/
	function getSize():Dynamic<Dynamic>;
	/**
		Set the size of current window.
	**/
	function setSize(width:Float, height:Float):Dynamic;
	/**
		Get the position of current window.
	**/
	function getPosition():Dynamic<Dynamic>;
	/**
		Set the position of current window.
	**/
	function setPosition(x:Float, y:Float):Dynamic;
	/**
		Move current window to the center of the screen. 
	**/
	function center():Dynamic;
	/**
		Focus the current window. 
	**/
	function focus():Dynamic;
	/**
		Show the current window. 
	**/
	function show():Dynamic;
	/**
		Hide the current window. 
	**/
	function hide():Dynamic;
	/**
		Reload the current window. 
	**/
	function reload():Dynamic;
	function isMaximized():Bool;
	function isFullScreen():Bool;
	/**
		Set the full screen state of the current window. 
	**/
	function setFullScreen():Dynamic;
	/**
		Toggle the full screen state of the current window. 
	**/
	function toggleFullScreen():Dynamic;
	/**
		Visually and audibly trigger a beep. 
	**/
	function beep():Dynamic;
	/**
		A flexible way to open a dialog akin to an alert dialog.
	**/
	function confirm(options:{ var message : String; var detailedMessage : String; var buttons : Dynamic; }):Float;
	/**
		Open the dev tools for the current window. 
	**/
	function openDevTools():Dynamic;
	/**
		Toggle the visibility of the dev tools for the current window. 
	**/
	function toggleDevTools():Dynamic;
	/**
		Execute code in dev tools. 
	**/
	function executeJavaScriptInDevTools():Dynamic;
}