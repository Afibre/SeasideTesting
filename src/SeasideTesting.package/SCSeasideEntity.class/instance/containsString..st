contents
containsString: aString 
	"Look deep into the containment hierarchy looking for the specified string"
	(self contentString includesSubstring: aString) ifTrue: [^true].
	^self entities anySatisfy: [:each | each containsString: aString]