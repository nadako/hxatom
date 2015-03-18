package atom;
@:native("CompositeDisposable") extern class CompositeDisposable {
	function new():Void;
	function dispose():Void;
	function add(disposable:atom.Disposable):Void;
	function remove(disposable:atom.Disposable):Void;
	function clear():Void;
}