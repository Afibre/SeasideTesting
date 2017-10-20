content
startElement: elementName attributeList: attributeList 
	| tag |
	tag := elementName asUppercase.
	tag = 'A'
		ifTrue: [^self startAnchor: attributeList].
	tag = 'FORM'
		ifTrue: [^self startForm: attributeList].
	tag = 'INPUT'
		ifTrue: [^self startInput: attributeList].
	tag = 'BUTTON'
		ifTrue: [^self startInput: attributeList].
	tag = 'SELECT'
		ifTrue: [^self startSelect: attributeList].
	tag = 'TEXTAREA'
		ifTrue: [^self startTextArea: attributeList].
	tag = 'OPTION'
		ifTrue: [^self startOption: attributeList].
	^self startGenericElement: elementName attributeList: attributeList