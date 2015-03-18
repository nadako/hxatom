package atom;

@:realPath("atom.Directory") @:native("Directory") extern class Directory {
	function new(directoryPath : String, symlink : Bool) : Void;
	function contains() : Dynamic;
	function existsSync() : Bool;
	function getBaseName() : String;
	function getEntries(callback : haxe.Function) : Void;
	function getEntriesSync() : Array<Dynamic>;
	function getFile(filename : String) : File;
	function getParent() : Directory;
	function getPath() : String;
	function getRealPathSync() : String;
	function getSubdirectory(dirname : String) : Directory;
	function isDirectory() : Bool;
	function isFile() : Bool;
	function isRoot() : Void;
	function onDidChange(callback : haxe.Function) : Disposable;
	function relativize() : String;
}
