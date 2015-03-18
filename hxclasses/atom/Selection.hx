package atom;

@:realPath("atom.Selection") @:native("Selection") extern class Selection {
	function addSelectionAbove() : Void;
	function addSelectionBelow() : Void;
	function autoIndentSelectedRows() : Void;
	function backspace() : Void;
	function clear() : Void;
	function compare(otherSelection : Selection) : Void;
	function copy(maintainClipboard : Bool, fullLine : Bool) : Void;
	function cut(maintainClipboard : Bool, fullLine : Bool) : Void;
	function cutToEndOfLine() : Void;
	function delete() : Void;
	function deleteLine() : Void;
	function deleteSelectedText() : Void;
	function deleteToBeginningOfLine() : Void;
	function deleteToBeginningOfWord() : Void;
	function deleteToEndOfLine() : Void;
	function deleteToEndOfWord() : Void;
	function expandOverLine() : Void;
	function expandOverWord() : Void;
	function fold() : Void;
	function getBufferRange() : Range;
	function getBufferRowRange() : Dynamic;
	function getScreenRange() : Range;
	function getText() : Dynamic;
	function indentSelectedRows() : Void;
	function insertText(text : String, options : Dynamic<Dynamic>) : Void;
	function intersectsBufferRange(bufferRange : Range) : Bool;
	function intersectsWith(otherSelection : Selection) : Bool;
	function isEmpty() : Void;
	function isReversed() : Void;
	function isSingleScreenLine() : Dynamic;
	function joinLines() : Void;
	function merge(otherSelection : Selection, options : Dynamic<Dynamic>) : Void;
	function onDidChangeRange(callback : haxe.Function) : Disposable;
	function onDidDestroy(callback : haxe.Function) : Disposable;
	function outdentSelectedRows() : Void;
	function selectAll() : Void;
	function selectDown(rowCount : Float) : Void;
	function selectLeft(columnCount : Float) : Void;
	function selectLine(row : Float) : Void;
	function selectRight(columnCount : Float) : Void;
	function selectToBeginningOfLine() : Void;
	function selectToBeginningOfNextParagraph() : Void;
	function selectToBeginningOfNextWord() : Void;
	function selectToBeginningOfPreviousParagraph() : Void;
	function selectToBeginningOfWord() : Void;
	function selectToBottom() : Void;
	function selectToBufferPosition(position : Point) : Void;
	function selectToEndOfLine() : Void;
	function selectToEndOfWord() : Void;
	function selectToFirstCharacterOfLine() : Void;
	function selectToNextWordBoundary() : Void;
	function selectToPreviousWordBoundary() : Void;
	function selectToScreenPosition(position : Point) : Void;
	function selectToTop() : Void;
	function selectUp(rowCount : Float) : Void;
	function selectWord() : Range;
	function setBufferRange(screenRange : Range, options : Dynamic<Dynamic>) : Void;
	function setScreenRange(screenRange : Range, options : Dynamic<Dynamic>) : Void;
	function toggleLineComments() : Void;
}
