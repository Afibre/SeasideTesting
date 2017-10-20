private-inputs
inputsWithClass: aName
	^self inputs select: [:each | each cssClass = aName]