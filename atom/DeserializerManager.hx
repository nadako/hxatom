package atom;
@:native("DeserializerManager") extern class DeserializerManager {
	function add(deserializers:Dynamic):Void;
	function deserialize(state:Dynamic<Dynamic>, params:Dynamic<Dynamic>):Void;
}