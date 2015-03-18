/**
	Used to access all of Atom's configuration details.
**/
package atom;
@:native("Config") extern class Config {
	/**
		Add a listener for changes to a given key path. This is different
		than {::onDidChange} in that it will immediately call your callback with the
		current value of the config entry.
	**/
	function observe(keyPath:String, options:{ var scopeDescriptor : atom.ScopeDescriptor; }, callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Add a listener for changes to a given key path. If `keyPath` is
		not specified, your callback will be called on changes to any key.
	**/
	function onDidChange(keyPath:String, optional:{ var scopeDescriptor : atom.ScopeDescriptor; }, callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Retrieves the setting for the given key.
	**/
	function get(keyPath:String, options:{ var sources : Array<Dynamic>; var excludeSources : Array<Dynamic>; var scope : atom.ScopeDescriptor; }):Dynamic;
	/**
		Get all of the values for the given key-path, along with their
		associated scope selector.
	**/
	function getAll(keyPath:String, options:Dynamic<Dynamic>):Array<Dynamic>;
	/**
		Sets the value for a configuration setting.
	**/
	function set(keyPath:String, value:Dynamic, options:{ var scopeSelector : String; var source : String; }):Bool;
	/**
		Restore the setting at `keyPath` to its default value.
	**/
	function unset(keyPath:String, options:{ var scopeSelector : String; var source : String; }):Dynamic;
	/**
		Get an {Array} of all of the `source` {String}s with which
		settings have been added via {::set}. 
	**/
	function getSources():Dynamic;
	/**
		Retrieve the schema for a specific key path. The schema will tell
		you what type the keyPath expects, and other metadata about the config
		option.
	**/
	function getSchema(keyPath:String):Dynamic;
	/**
		Get the {String} path to the config file being used. 
	**/
	function getUserConfigPath():Dynamic;
	/**
		Suppress calls to handler functions registered with {::onDidChange}
		and {::observe} for the duration of `callback`. After `callback` executes,
		handlers will be called once if the value for their key-path has changed.
	**/
	function transact(callback:haxe.Constraints.Function):Dynamic;
}