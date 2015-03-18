package atom;

@:realPath("atom.CompositeDisposable") @:native("CompositeDisposable") extern class CompositeDisposable {
	function new() : Void;
	function add(disposable : Disposable) : Void;
	function clear() : Void;
	function dispose() : Void;
	function remove(disposable : Disposable) : Void;
}
