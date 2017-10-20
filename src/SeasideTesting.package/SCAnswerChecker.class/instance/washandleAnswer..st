call/answer
washandleAnswer: anObject 
	(super handleAnswer: anObject)
		ifTrue: [^ true]
		ifFalse: 
			[hasAnswer := true.
			answerValue := anObject].
	^ false