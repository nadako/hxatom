/**
	Represents a project that's opened in Atom.
**/
package atom;
@:native("Project") extern class Project {
	/**
		Invoke the given callback when the project paths change.
	**/
	function onDidChangePaths(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Get an {Array} of {GitRepository}s associated with the project's
		directories.
	**/
	function getRepositories():Void;
	/**
		Get the repository for a given directory asynchronously.
	**/
	function repositoryForDirectory(directory:atom.Directory):js.Promise<Dynamic>;
	/**
		Get an {Array} of {String}s containing the paths of the project's
		directories. 
	**/
	function getPaths():Void;
	/**
		Set the paths of the project's directories.
	**/
	function setPaths(projectPaths:Array<Dynamic>):Void;
	/**
		Add a path to the project's list of root paths
	**/
	function addPath(projectPath:String):Void;
	/**
		remove a path from the project's list of root paths.
	**/
	function removePath(projectPath:String):Void;
	/**
		Get an {Array} of {Directory}s associated with this project. 
	**/
	function getDirectories():Void;
	/**
		Get the path to the project directory that contains the given path,
		and the relative path from that project directory to the given path.
	**/
	function relativizePath(fullPath:String):Array<Dynamic>;
	/**
		Determines whether the given path (real or symbolic) is inside the
		project's directory.
	**/
	function contains(pathToCheck:String):Dynamic;
}