/**
	Represents the state of the user interface for the entire window.
	An instance of this class is available via the `atom.workspace` global.
**/
package atom;
@:native("Workspace") extern class Workspace {
	/**
		Invoke the given callback with all current and future text
		editors in the workspace.
	**/
	function observeTextEditors(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback with all current and future panes items
		in the workspace.
	**/
	function observePaneItems(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when the active pane item changes.
	**/
	function onDidChangeActivePaneItem(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback with the current active pane item and
		with all future active pane items in the workspace.
	**/
	function observeActivePaneItem(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback whenever an item is opened. Unlike
		{::onDidAddPaneItem}, observers will be notified for items that are already
		present in the workspace when they are reopened.
	**/
	function onDidOpen(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a pane is added to the workspace.
	**/
	function onDidAddPane(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a pane is destroyed in the
		workspace.
	**/
	function onDidDestroyPane(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback with all current and future panes in the
		workspace.
	**/
	function observePanes(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when the active pane changes.
	**/
	function onDidChangeActivePane(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback with the current active pane and when
		the active pane changes.
	**/
	function observeActivePane(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a pane item is added to the
		workspace.
	**/
	function onDidAddPaneItem(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a pane item is about to be
		destroyed, before the user is prompted to save it.
	**/
	function onWillDestroyPaneItem(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a pane item is destroyed.
	**/
	function onDidDestroyPaneItem(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Invoke the given callback when a text editor is added to the
		workspace.
	**/
	function onDidAddTextEditor(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Open a given a URI in Atom asynchronously.
	**/
	function open(uri:String, options:Dynamic<Dynamic>):atom.TextEditor;
	/**
		Asynchronously reopens the last-closed item's URI if it hasn't already been
		reopened.
	**/
	function reopenItem():Dynamic;
	/**
		Register an opener for a uri.
	**/
	function addOpener(opener:haxe.Constraints.Function):atom.Disposable;
	/**
		Get all pane items in the workspace.
	**/
	function getPaneItems():Array<Dynamic>;
	/**
		Get the active {Pane}'s active item.
	**/
	function getActivePaneItem():Dynamic<Dynamic>;
	/**
		Get all text editors in the workspace.
	**/
	function getTextEditors():Array<Dynamic>;
	/**
		Get the active item if it is an {TextEditor}.
	**/
	function getActiveTextEditor():atom.TextEditor;
	/**
		Get all panes in the workspace.
	**/
	function getPanes():Array<Dynamic>;
	/**
		Get the active {Pane}.
	**/
	function getActivePane():atom.Pane;
	/**
		Make the next pane active. 
	**/
	function activateNextPane():Void;
	/**
		Make the previous pane active. 
	**/
	function activatePreviousPane():Void;
	/**
		Get the first {Pane} with an item for the given URI.
	**/
	function paneForURI(uri:String):atom.Pane;
	/**
		Get the {Pane} containing the given item.
	**/
	function paneForItem(item:Dynamic):atom.Pane;
	/**
		Get an {Array} of all the panel items at the bottom of the editor window. 
	**/
	function getBottomPanels():Void;
	/**
		Adds a panel item to the bottom of the editor window.
	**/
	function addBottomPanel(options:Dynamic<Dynamic>):atom.Panel;
	/**
		Get an {Array} of all the panel items to the left of the editor window. 
	**/
	function getLeftPanels():Void;
	/**
		Adds a panel item to the left of the editor window.
	**/
	function addLeftPanel(options:Dynamic<Dynamic>):atom.Panel;
	/**
		Get an {Array} of all the panel items to the right of the editor window. 
	**/
	function getRightPanels():Void;
	/**
		Adds a panel item to the right of the editor window.
	**/
	function addRightPanel(options:Dynamic<Dynamic>):atom.Panel;
	/**
		Get an {Array} of all the panel items at the top of the editor window. 
	**/
	function getTopPanels():Void;
	/**
		Adds a panel item to the top of the editor window above the tabs.
	**/
	function addTopPanel(options:Dynamic<Dynamic>):atom.Panel;
	/**
		Get an {Array} of all the modal panel items 
	**/
	function getModalPanels():Void;
	/**
		Adds a panel item as a modal dialog.
	**/
	function addModalPanel(options:Dynamic<Dynamic>):atom.Panel;
	function panelForItem(item:Dynamic):Dynamic;
	/**
		Performs a search across all the files in the workspace.
	**/
	function scan(regex:js.RegExp, options:Dynamic<Dynamic>, iterator:haxe.Constraints.Function):Dynamic;
	/**
		Performs a replace across all the specified files in the project.
	**/
	function replace(regex:js.RegExp, replacementText:Dynamic, filePaths:Dynamic, iterator:haxe.Constraints.Function):Dynamic;
}