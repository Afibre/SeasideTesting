value
selectOptionWithText: text ifNone: aBlock 
	| option |
	option := self options detect: [:each | each label = text]
				ifNone: [^aBlock value].
	option select