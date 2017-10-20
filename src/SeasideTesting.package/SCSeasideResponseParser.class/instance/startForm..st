content
startForm: attributes
	| form |
	form := SCSeasideForm withAttributes: attributes.
	self addEntity: form.
	currentForm := form