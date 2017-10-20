private-inputs
optionValuesByTextForSelect: aSelectElement 
	| optionElements result |
	optionElements := aSelectElement elements
				select: [:each | each name = 'option'].
	result := Dictionary new.
	optionElements
		do: [:each | result at: (each contents first string) put: (each attributeAt: 'value') ].
	^result