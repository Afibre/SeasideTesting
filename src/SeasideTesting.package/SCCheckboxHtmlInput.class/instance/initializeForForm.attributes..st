initialize
initializeForForm: aForm attributes: theAttributes
	super initializeForForm: aForm attributes: theAttributes.
	value := attributes includes: 'checked'.