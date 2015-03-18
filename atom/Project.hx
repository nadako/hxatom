package atom;
@:native("Project") extern class Project {
	function onDidChangePaths(callback:haxe.Constraints.Function):atom.Disposable;
	function getRepositories():Void;
	function repositoryForDirectory(directory:atom.Directory):js.Promise<Dynamic>;
	function getPaths():Void;
	function setPaths(projectPaths:Array<Dynamic>):Void;
	function addPath(projectPath:String):Void;
	function removePath(projectPath:String):Void;
	function getDirectories():Void;
	function relativizePath(fullPath:String):Array<Dynamic>;
	function contains(pathToCheck:String):Dynamic;
}