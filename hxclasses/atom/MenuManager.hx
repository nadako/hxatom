package atom;

@:realPath("atom.MenuManager") @:native("MenuManager") extern class MenuManager {
	function add(items : Array<Dynamic>) : Disposable;
	function update() : Void;
}
