/**
	An object that aggregates multiple {Disposable} instances together
	into a single disposable, so they can all be disposed as a group.
**/
package atom;
@:native("CompositeDisposable") extern class CompositeDisposable {
	/**
		Construct an instance, optionally with one or more disposables 
	**/
	function new():Void;
	/**
		Dispose all disposables added to this composite disposable.
	**/
	function dispose():Void;
	/**
		Add a disposable to be disposed when the composite is disposed.
	**/
	function add(disposable:atom.Disposable):Void;
	/**
		Remove a previously added disposable.
	**/
	function remove(disposable:atom.Disposable):Void;
	/**
		Clear all disposables. They will not be disposed by the next call
		to dispose. 
	**/
	function clear():Void;
}