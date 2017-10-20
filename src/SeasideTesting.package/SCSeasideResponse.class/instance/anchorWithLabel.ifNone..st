parts
anchorWithLabel: aString ifNone: aBlock
	^ self anchors
		detect: [:anchor | anchor label = aString]
		ifNone: aBlock