/**
	Associates tooltips with HTML elements or selectors.
**/
package atom;
@:native("TooltipManager") extern class TooltipManager {
	/**
		Add a tooltip to the given element.
	**/
	function add(target:Dynamic, options:Dynamic):atom.Disposable;
}