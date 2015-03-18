/**
	Represents an individual file that can be watched, read from, and
	written to. 
**/
package atom;
@:native("File") extern class File {
	/**
		Creates a new file.
	**/
	function new(filePath:String, symlink:Bool):Void;
	/**
		Invoke the given callback when the file's contents change.
	**/
	function onDidChange(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when the file's path changes.
	**/
	function onDidRename(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when the file is deleted.
	**/
	function onDidDelete(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when there is an error with the watch.
		When your callback has been invoked, the file will have unsubscribed from
		the file watches.
	**/
	function onWillThrowWatchError(callback:{ var error : Dynamic<Dynamic>; var handle : haxe.Constraints.Function; } -> Dynamic):Dynamic;
	function isFile():Bool;
	function isDirectory():Bool;
	function exists():Bool;
	function existsSync():Bool;
	/**
		Get the SHA-1 digest of this file
	**/
	function getDigest():String;
	/**
		Sets the file's character set encoding name.
	**/
	function setEncoding(encoding:String):Dynamic;
	function getEncoding():String;
	function getPath():String;
	function getRealPathSync():String;
	/**
		Return the {String} filename without any directory information. 
	**/
	function getBaseName():Dynamic;
	/**
		Return the {Directory} that contains this file. 
	**/
	function getParent():Dynamic;
	/**
		Reads the contents of the file.
	**/
	function read(flushCache:Bool):Dynamic;
	/**
		Overwrites the file with the given text.
	**/
	function write(text:String):Dynamic;
}