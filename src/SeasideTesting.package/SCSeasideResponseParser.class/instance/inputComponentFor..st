content
inputComponentFor: attributes 
	| type |
	type := (attributes
				at: 'type'
				ifAbsent: ['']) asLowercase.
	type = 'text' | (type = 'password')
		ifTrue: [^ SCTextHtmlInput attributes: attributes form: currentForm].
	type = 'checkbox'
		ifTrue: [^ SCCheckboxHtmlInput attributes: attributes form: currentForm].
	type = 'hidden'
		ifTrue: [^ SCHiddenHtmlInput attributes: attributes form: currentForm].
	type = 'submit'
		ifTrue: [^ SCSubmitButtonHtmlInput attributes: attributes form: currentForm].
	type = 'radio'
		ifTrue: [^ self radioComponentFor: attributes].
	type = 'reset'
		ifTrue: [^ nil].
	type = 'file'
		ifTrue: [^ SCFileHtmlInput attributes: attributes form: currentForm].
	self error: 'unknown input type'