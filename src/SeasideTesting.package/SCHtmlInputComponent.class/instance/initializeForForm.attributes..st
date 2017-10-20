initialize
initializeForForm: aForm attributes: theAttributes
	self attributes: theAttributes.
	value := attributes at: 'value' ifAbsent: [].
	form := aForm