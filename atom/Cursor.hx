/**
	The `Cursor` class represents the little blinking line identifying
	where text can be inserted.
**/
package atom;
@:native("Cursor") extern class Cursor {
	/**
		Calls your `callback` when the cursor has been moved.
	**/
	function onDidChangePosition(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Calls your `callback` when the cursor is destroyed
	**/
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Calls your `callback` when the cursor's visibility has changed
	**/
	function onDidChangeVisibility(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Moves a cursor to a given screen position.
	**/
	function setScreenPosition(screenPosition:Array<Dynamic>, options:Dynamic<Dynamic>):Void;
	function getScreenPosition():Dynamic;
	/**
		Moves a cursor to a given buffer position.
	**/
	function setBufferPosition(bufferPosition:Array<Dynamic>, options:Dynamic<Dynamic>):Void;
	function getBufferPosition():Dynamic;
	function getScreenRow():Dynamic;
	function getScreenColumn():Dynamic;
	/**
		Retrieves the cursor's current buffer row. 
	**/
	function getBufferRow():Void;
	function getBufferColumn():Dynamic;
	function getCurrentBufferLine():Dynamic;
	function isAtBeginningOfLine():Dynamic;
	function isAtEndOfLine():Dynamic;
	function getMarker():atom.Marker;
	/**
		Identifies if the cursor is surrounded by whitespace.
	**/
	function isSurroundedByWhitespace():Bool;
	function isBetweenWordAndNonWord():Dynamic;
	function isInsideWord(options:Dynamic<Dynamic>):Dynamic;
	function getIndentLevel():Dynamic;
	/**
		Retrieves the scope descriptor for the cursor's current position.
	**/
	function getScopeDescriptor():atom.ScopeDescriptor;
	function hasPrecedingCharactersOnLine():Dynamic;
	/**
		Identifies if this cursor is the last in the {TextEditor}.
	**/
	function isLastCursor():Bool;
	/**
		Moves the cursor up one screen row.
	**/
	function moveUp(rowCount:Float, options:Dynamic<Dynamic>):Void;
	/**
		Moves the cursor down one screen row.
	**/
	function moveDown(rowCount:Float, options:Dynamic<Dynamic>):Void;
	/**
		Moves the cursor left one screen column.
	**/
	function moveLeft(columnCount:Float, options:Dynamic<Dynamic>):Void;
	/**
		Moves the cursor right one screen column.
	**/
	function moveRight(columnCount:Float, options:Dynamic<Dynamic>):Void;
	/**
		Moves the cursor to the top of the buffer. 
	**/
	function moveToTop():Void;
	/**
		Moves the cursor to the bottom of the buffer. 
	**/
	function moveToBottom():Void;
	/**
		Moves the cursor to the beginning of the line. 
	**/
	function moveToBeginningOfScreenLine():Void;
	/**
		Moves the cursor to the beginning of the buffer line. 
	**/
	function moveToBeginningOfLine():Void;
	/**
		Moves the cursor to the beginning of the first character in the
		line. 
	**/
	function moveToFirstCharacterOfLine():Void;
	/**
		Moves the cursor to the end of the line. 
	**/
	function moveToEndOfScreenLine():Void;
	/**
		Moves the cursor to the end of the buffer line. 
	**/
	function moveToEndOfLine():Void;
	/**
		Moves the cursor to the beginning of the word. 
	**/
	function moveToBeginningOfWord():Void;
	/**
		Moves the cursor to the end of the word. 
	**/
	function moveToEndOfWord():Void;
	/**
		Moves the cursor to the beginning of the next word. 
	**/
	function moveToBeginningOfNextWord():Void;
	/**
		Moves the cursor to the previous word boundary. 
	**/
	function moveToPreviousWordBoundary():Void;
	/**
		Moves the cursor to the next word boundary. 
	**/
	function moveToNextWordBoundary():Void;
	/**
		Moves the cursor to the beginning of the buffer line, skipping all
		whitespace. 
	**/
	function skipLeadingWhitespace():Void;
	/**
		Moves the cursor to the beginning of the next paragraph 
	**/
	function moveToBeginningOfNextParagraph():Void;
	/**
		Moves the cursor to the beginning of the previous paragraph 
	**/
	function moveToBeginningOfPreviousParagraph():Void;
	function getPreviousWordBoundaryBufferPosition(options:Dynamic<Dynamic>):Dynamic;
	function getNextWordBoundaryBufferPosition(options:Dynamic<Dynamic>):Dynamic;
	/**
		Retrieves the buffer position of where the current word starts.
	**/
	function getBeginningOfCurrentWordBufferPosition(options:Dynamic<Dynamic>):atom.Range;
	/**
		Retrieves the buffer position of where the current word ends.
	**/
	function getEndOfCurrentWordBufferPosition(options:Dynamic<Dynamic>):atom.Range;
	/**
		Retrieves the buffer position of where the next word starts.
	**/
	function getBeginningOfNextWordBufferPosition(options:Dynamic<Dynamic>):atom.Range;
	function getCurrentWordBufferRange(options:Dynamic<Dynamic>):Dynamic;
	function getCurrentLineBufferRange(options:Dynamic<Dynamic>):Dynamic;
	/**
		Retrieves the range for the current paragraph.
	**/
	function getCurrentParagraphBufferRange():atom.Range;
	function getCurrentWordPrefix():Dynamic;
	/**
		Sets whether the cursor is visible. 
	**/
	function setVisible():Void;
	function isVisible():Dynamic;
	/**
		Compare this cursor's buffer position to another cursor's buffer position.
	**/
	function compare(otherCursor:atom.Cursor):Void;
	/**
		Prevents this cursor from causing scrolling. 
	**/
	function clearAutoscroll():Void;
	/**
		Deselects the current selection. 
	**/
	function clearSelection():Void;
	/**
		Get the RegExp used by the cursor to determine what a "word" is.
	**/
	function wordRegExp(options:Dynamic<Dynamic>):js.RegExp;
}