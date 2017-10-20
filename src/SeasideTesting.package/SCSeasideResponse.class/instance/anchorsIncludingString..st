parts
anchorsIncludingString: aString 
	^self anchors select: [:anchor | anchor containsString: aString]
