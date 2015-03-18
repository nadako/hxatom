package atom;

@:realPath("atom.Color") @:native("Color") extern class Color {
	function toHexString() : String;
	function toRGBAString() : String;
	static function parse(value : String) : Color;
}
