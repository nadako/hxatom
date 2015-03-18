package atom;

@:realPath("atom.Point") @:native("Point") extern class Point {
	function new(row : Float, column : Float) : Void;
	function compare(other : Point) : Dynamic;
	function copy() : Point;
	function freeze() : Point;
	function isEqual(other : Point) : Bool;
	function isGreaterThan(other : Point) : Bool;
	function isGreaterThanOrEqual(other : Point) : Bool;
	function isLessThan(other : Point) : Bool;
	function isLessThanOrEqual(other : Point) : Bool;
	function negate() : Point;
	function serialize() : Dynamic;
	function toArray() : Dynamic;
	function toString() : Dynamic;
	function translate(other : Point) : Point;
	function traverse(other : Point) : Point;
	static function fromObject(object : Point, copy : Dynamic) : Point;
	static function min(point1 : Point, point2 : Point) : Point;
}
