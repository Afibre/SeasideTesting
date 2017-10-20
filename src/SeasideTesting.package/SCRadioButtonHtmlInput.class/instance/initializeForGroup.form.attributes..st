initialize
initializeForGroup: aGroup form: aForm attributes: theAttributes
	self initializeForForm: aForm attributes: theAttributes.
	group := aGroup.
	internalValue := value.
	value := attributes includesKey: 'checked'.
	