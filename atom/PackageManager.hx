package atom;
@:native("PackageManager") extern class PackageManager {
	function onDidLoadInitialPackages(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidActivateInitialPackages(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidActivatePackage(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDeactivatePackage(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidLoadPackage(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidUnloadPackage(callback:haxe.Constraints.Function):atom.Disposable;
	function getApmPath():Void;
	function getPackageDirPaths():Array<Dynamic>;
	function resolvePackagePath(name:String):Void;
	function isBundledPackage(name:String):Bool;
	function enablePackage():Dynamic<Dynamic>;
	function disablePackage():Dynamic<Dynamic>;
	function isPackageDisabled(name:String):Bool;
	function getActivePackages():Void;
	function getActivePackage(name:String):Dynamic<Dynamic>;
	function isPackageActive(name:String):Bool;
	function getLoadedPackages():Void;
	function getLoadedPackage(name:String):Dynamic<Dynamic>;
	function isPackageLoaded(name:String):Bool;
	function getAvailablePackagePaths():Void;
	function getAvailablePackageNames():Void;
	function getAvailablePackageMetadata():Void;
}