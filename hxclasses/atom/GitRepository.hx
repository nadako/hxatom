package atom;

@:realPath("atom.GitRepository") @:native("GitRepository") extern class GitRepository {
	function checkoutHead(path : String) : Bool;
	function checkoutReference(reference : String, create : Bool) : Dynamic;
	function destroy() : Void;
	function getAheadBehindCount(reference : String, path : String) : Dynamic;
	function getCachedPathStatus(path : String) : Float;
	function getCachedUpstreamAheadBehindCount(path : String) : Dynamic<Dynamic>;
	function getConfigValue(path : String) : Dynamic;
	function getDiffStats(path : String) : Dynamic<Dynamic>;
	function getDirectoryStatus(path : String) : Float;
	function getLineDiffs(path : String, text : String) : Array<Dynamic>;
	function getOriginURL(path : String) : Dynamic;
	function getPath() : String;
	function getPathStatus() : Float;
	function getReferenceTarget(reference : String, path : String) : String;
	function getReferences(path : String) : Dynamic<Dynamic>;
	function getShortHead(path : String) : String;
	function getUpstreamBranch(path : String) : Dynamic;
	function getWorkingDirectory() : String;
	function hasBranch() : Dynamic;
	function isPathIgnored() : Bool;
	function isPathModified() : Dynamic;
	function isPathNew() : Dynamic;
	function isProjectAtRoot() : Dynamic;
	function isStatusModified() : Dynamic;
	function isStatusNew() : Dynamic;
	function isSubmodule(path : String) : Bool;
	function onDidChangeStatus(callback : haxe.Function) : Disposable;
	function onDidChangeStatuses(callback : haxe.Function) : Disposable;
	function onDidDestroy() : Void;
	function relativize() : Void;
	static function open(path : String, options : Dynamic<Dynamic>) : GitRepository;
}
