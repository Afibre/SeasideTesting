parts
anchorsWithLabel: aString 
	^ self anchors
		select: [:anchor | anchor label = aString]