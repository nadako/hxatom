package atom;

@:realPath("atom.PackageManager") @:native("PackageManager") extern class PackageManager {
	function disablePackage() : Dynamic<Dynamic>;
	function enablePackage() : Dynamic<Dynamic>;
	function getActivePackage(name : String) : Dynamic<Dynamic>;
	function getActivePackages() : Void;
	function getApmPath() : Void;
	function getAvailablePackageMetadata() : Void;
	function getAvailablePackageNames() : Void;
	function getAvailablePackagePaths() : Void;
	function getLoadedPackage(name : String) : Dynamic<Dynamic>;
	function getLoadedPackages() : Void;
	function getPackageDirPaths() : Array<Dynamic>;
	function isBundledPackage(name : String) : Bool;
	function isPackageActive(name : String) : Bool;
	function isPackageDisabled(name : String) : Bool;
	function isPackageLoaded(name : String) : Bool;
	function onDidActivateInitialPackages(callback : haxe.Function) : Disposable;
	function onDidActivatePackage(callback : haxe.Function) : Disposable;
	function onDidDeactivatePackage(callback : haxe.Function) : Disposable;
	function onDidLoadInitialPackages(callback : haxe.Function) : Disposable;
	function onDidLoadPackage(callback : haxe.Function) : Disposable;
	function onDidUnloadPackage(callback : haxe.Function) : Disposable;
	function resolvePackagePath(name : String) : Void;
}
