package atom;
@:native("File") extern class File {
	function new(filePath:String, symlink:Bool):Void;
	function onDidChange(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidRename(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDelete(callback:haxe.Constraints.Function):atom.Disposable;
	function onWillThrowWatchError(callback:haxe.Constraints.Function):Void;
	function isFile():Bool;
	function isDirectory():Bool;
	function exists():Bool;
	function existsSync():Bool;
	function getDigest():String;
	function setEncoding(encoding:String):Void;
	function getEncoding():String;
	function getPath():String;
	function getRealPathSync():String;
	function getBaseName():Void;
	function getParent():Void;
	function read(flushCache:Bool):Dynamic;
	function write(text:String):Void;
}