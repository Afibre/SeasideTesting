contents
contentString
	| result |
	result := WriteStream on: String new.
	(self entities select: [:each | each isTextEntity]) do: [:textEntity |
		result nextPutAll: textEntity text].
	^result contents