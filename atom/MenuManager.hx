package atom;
@:native("MenuManager") extern class MenuManager {
	function add(items:Array<Dynamic>):atom.Disposable;
	function update():Void;
}