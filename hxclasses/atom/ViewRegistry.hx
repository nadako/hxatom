package atom;

@:realPath("atom.ViewRegistry") @:native("ViewRegistry") extern class ViewRegistry {
	function addViewProvider(providerSpec : Dynamic<Dynamic>) : Disposable;
	function getView(object : Dynamic) : Dynamic;
}
