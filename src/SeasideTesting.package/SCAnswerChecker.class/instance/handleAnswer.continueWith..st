call/answer
handleAnswer: anObject continueWith: aBlock
	hasAnswer := true.
	answerValue := anObject.
	^true