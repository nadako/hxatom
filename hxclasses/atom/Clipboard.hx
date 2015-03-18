package atom;

@:realPath("atom.Clipboard") @:native("Clipboard") extern class Clipboard {
	function read() : String;
	function readWithMetadata() : Dynamic<Dynamic>;
	function write(text : String, metadata : Dynamic) : Void;
}
