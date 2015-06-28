/**
	A notification to the user containing a message and type. 
**/
package atom;
@:native("Notification") extern class Notification {
	/**
		Retrieves the {String} type. 
	**/
	function getType():Dynamic;
	/**
		Retrieves the {String} message. 
	**/
	function getMessage():Dynamic;
}