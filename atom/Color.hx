package atom;
@:native("Color") extern class Color {
	static function parse(value:String):atom.Color;
	function toHexString():String;
	function toRGBAString():String;
}