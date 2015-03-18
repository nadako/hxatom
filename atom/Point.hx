package atom;
@:native("Point") extern class Point {
	static function fromObject(object:atom.Point, copy:Dynamic):atom.Point;
	static function min(point1:atom.Point, point2:atom.Point):atom.Point;
	function new(row:Float, column:Float):Void;
	function copy():atom.Point;
	function negate():atom.Point;
	function freeze():atom.Point;
	function translate(other:atom.Point):atom.Point;
	function traverse(other:atom.Point):atom.Point;
	function compare(other:atom.Point):Dynamic;
	function isEqual(other:atom.Point):Bool;
	function isLessThan(other:atom.Point):Bool;
	function isLessThanOrEqual(other:atom.Point):Bool;
	function isGreaterThan(other:atom.Point):Bool;
	function isGreaterThanOrEqual(other:atom.Point):Bool;
	function toArray():Dynamic;
	function serialize():Dynamic;
	function toString():Dynamic;
}