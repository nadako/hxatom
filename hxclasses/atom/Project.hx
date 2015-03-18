package atom;

@:realPath("atom.Project") @:native("Project") extern class Project {
	function addPath(projectPath : String) : Void;
	function contains(pathToCheck : String) : Dynamic;
	function getDirectories() : Void;
	function getPaths() : Void;
	function getRepositories() : Void;
	function onDidChangePaths(callback : haxe.Function) : Disposable;
	function relativizePath(fullPath : String) : Array<Dynamic>;
	function removePath(projectPath : String) : Void;
	function repositoryForDirectory(directory : Directory) : js.Promise<Dynamic>;
	function setPaths(projectPaths : Array<Dynamic>) : Void;
}
