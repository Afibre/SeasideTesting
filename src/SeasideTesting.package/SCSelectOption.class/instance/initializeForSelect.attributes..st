initialize
initializeForSelect: aSelect attributes: theAttributes 
	self attributes: theAttributes.
	value := attributes at: 'value' ifAbsent: [self label].
	selectInput := aSelect.
	(attributes includesKey: 'selected')
		ifTrue: [selectInput selectedOptions add: self]