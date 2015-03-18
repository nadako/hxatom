package atom;

@:realPath("atom.Range") @:native("Range") extern class Range {
	function new(pointA : Point, pointB : Point) : Void;
	function compare(otherRange : Range) : Dynamic;
	function containsPoint(point : Point, exclusive : Dynamic) : Bool;
	function containsRange(otherRange : Range, exclusive : Dynamic) : Bool;
	function copy() : Dynamic;
	function coversSameRows(otherRange : Range) : Bool;
	function freeze() : Range;
	function getRowCount() : Float;
	function getRows() : Dynamic;
	function intersectsRow(row : Float) : Bool;
	function intersectsRowRange(startRow : Float, endRow : Float) : Bool;
	function intersectsWith(otherRange : Range, exclusive : Bool) : Bool;
	function isEmpty() : Bool;
	function isEqual(otherRange : Range) : Bool;
	function isSingleLine() : Bool;
	function negate() : Dynamic;
	function serialize() : Dynamic;
	function toString() : Dynamic;
	function translate(startDelta : Point, endDelta : Point) : Range;
	function traverse(delta : Point) : Range;
	function union(otherRange : Range) : Dynamic;
	static function deserialize(array : Array<Dynamic>) : Void;
	static function fromObject(object : Range, copy : Dynamic) : Range;
}
