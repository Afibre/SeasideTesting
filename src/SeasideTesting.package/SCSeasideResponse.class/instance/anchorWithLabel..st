parts
anchorWithLabel: aString 
	^ self anchors detect: [:anchor | anchor label = aString] ifNone: []