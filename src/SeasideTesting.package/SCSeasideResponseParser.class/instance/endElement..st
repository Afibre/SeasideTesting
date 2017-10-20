content
endElement: elementName
	elementName asUppercase = 'FORM' ifTrue: [currentForm := nil].
	elementName asUppercase = 'SELECT' ifTrue: [currentSelect := nil].
	^self pop