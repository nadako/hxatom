package atom;
@:native("ViewRegistry") extern class ViewRegistry {
	function addViewProvider(providerSpec:Dynamic<Dynamic>):atom.Disposable;
	function getView(object:Dynamic):Dynamic;
}