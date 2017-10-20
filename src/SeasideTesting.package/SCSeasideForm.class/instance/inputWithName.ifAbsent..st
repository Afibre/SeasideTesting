private-inputs
inputWithName: aName ifAbsent: aBlock 
	self inputs detect: [:each | each name = aName] ifNone: aBlock