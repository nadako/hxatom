package atom;

@:realPath("atom.Marker") @:native("Marker") extern class Marker {
	function clearTail(properties : Dynamic<Dynamic>) : Void;
	function compare(other : Marker) : Float;
	function copy(properties : Dynamic<Dynamic>) : Void;
	function destroy() : Void;
	function getBufferRange() : Range;
	function getEndBufferPosition() : Point;
	function getEndScreenPosition() : Point;
	function getHeadBufferPosition() : Point;
	function getHeadScreenPosition() : Point;
	function getInvalidationStrategy() : String;
	function getProperties() : Dynamic<Dynamic>;
	function getScreenRange() : Range;
	function getStartBufferPosition() : Point;
	function getStartScreenPosition() : Point;
	function getTailBufferPosition() : Point;
	function getTailScreenPosition() : Point;
	function hasTail() : Bool;
	function isDestroyed() : Bool;
	function isEqual(other : Marker) : Bool;
	function isReversed() : Bool;
	function isValid() : Bool;
	function onDidChange(callback : haxe.Function) : Disposable;
	function onDidDestroy(callback : haxe.Function) : Disposable;
	function plantTail(properties : Dynamic<Dynamic>) : Void;
	function setBufferRange(bufferRange : Range, properties : Dynamic<Dynamic>) : Void;
	function setHeadBufferPosition(bufferPosition : Point, properties : Dynamic<Dynamic>) : Void;
	function setHeadScreenPosition(screenPosition : Point, properties : Dynamic<Dynamic>) : Void;
	function setProperties(properties : Dynamic<Dynamic>) : Void;
	function setScreenRange(screenRange : Range, properties : Dynamic<Dynamic>) : Void;
	function setTailBufferPosition(bufferPosition : Point, properties : Dynamic<Dynamic>) : Void;
	function setTailScreenPosition(screenPosition : Point, properties : Dynamic<Dynamic>) : Void;
}
