parts
anchorsWithClass: aString
	^ self anchors
		select: [:anchor | anchor cssClass = aString]