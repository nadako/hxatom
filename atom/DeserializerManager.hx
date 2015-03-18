/**
	Manages the deserializers used for serialized state
**/
package atom;
@:native("DeserializerManager") extern class DeserializerManager {
	/**
		Register the given class(es) as deserializers.
	**/
	function add(deserializers:Dynamic):Void;
	/**
		Deserialize the state and params.
	**/
	function deserialize(state:Dynamic<Dynamic>, params:Dynamic<Dynamic>):Void;
}