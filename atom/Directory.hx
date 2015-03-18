package atom;
@:native("Directory") extern class Directory {
	function new(directoryPath:String, symlink:Bool):Void;
	function onDidChange(callback:haxe.Constraints.Function):atom.Disposable;
	function isFile():Bool;
	function isDirectory():Bool;
	function existsSync():Bool;
	function isRoot():Void;
	function getPath():String;
	function getRealPathSync():String;
	function getBaseName():String;
	function relativize():String;
	function getParent():atom.Directory;
	function getFile(filename:String):atom.File;
	function getSubdirectory(dirname:String):atom.Directory;
	function getEntriesSync():Array<Dynamic>;
	function getEntries(callback:haxe.Constraints.Function):Void;
	function contains():Dynamic;
}