package atom;

@:realPath("atom.Disposable") @:native("Disposable") extern class Disposable {
	function new(disposalAction : Dynamic) : Void;
	function dispose() : Void;
}
