buttons
buttonWithValue: aString 
	^ self buttons
		detect: [:each | each value = aString] 
		ifNone: [self error: 'no such button']