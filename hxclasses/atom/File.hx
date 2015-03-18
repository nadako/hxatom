package atom;

@:realPath("atom.File") @:native("File") extern class File {
	function new(filePath : String, symlink : Bool) : Void;
	function exists() : Bool;
	function existsSync() : Bool;
	function getBaseName() : Void;
	function getDigest() : String;
	function getEncoding() : String;
	function getParent() : Void;
	function getPath() : String;
	function getRealPathSync() : String;
	function isDirectory() : Bool;
	function isFile() : Bool;
	function onDidChange(callback : haxe.Function) : Disposable;
	function onDidDelete(callback : haxe.Function) : Disposable;
	function onDidRename(callback : haxe.Function) : Disposable;
	function onWillThrowWatchError(callback : haxe.Function) : Void;
	function read(flushCache : Bool) : Dynamic;
	function setEncoding(encoding : String) : Void;
	function write(text : String) : Void;
}
