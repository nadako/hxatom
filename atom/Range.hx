package atom;
@:native("Range") extern class Range {
	static function fromObject(object:atom.Range, copy:Dynamic):atom.Range;
	static function deserialize(array:Array<Dynamic>):Void;
	function new(pointA:atom.Point, pointB:atom.Point):Void;
	function copy():Dynamic;
	function negate():Dynamic;
	function serialize():Dynamic;
	function isEmpty():Bool;
	function isSingleLine():Bool;
	function getRowCount():Float;
	function getRows():Dynamic;
	function freeze():atom.Range;
	function union(otherRange:atom.Range):Dynamic;
	function translate(startDelta:atom.Point, endDelta:atom.Point):atom.Range;
	function traverse(delta:atom.Point):atom.Range;
	function compare(otherRange:atom.Range):Dynamic;
	function isEqual(otherRange:atom.Range):Bool;
	function coversSameRows(otherRange:atom.Range):Bool;
	function intersectsWith(otherRange:atom.Range, exclusive:Bool):Bool;
	function containsRange(otherRange:atom.Range, exclusive:Dynamic):Bool;
	function containsPoint(point:atom.Point, exclusive:Dynamic):Bool;
	function intersectsRow(row:Float):Bool;
	function intersectsRowRange(startRow:Float, endRow:Float):Bool;
	function toString():Dynamic;
}