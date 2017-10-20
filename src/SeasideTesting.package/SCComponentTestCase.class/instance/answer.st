answering
answer
	| checker |
	checker := runnerTask answerChecker.
	^checker hasAnswer
		ifTrue: [checker answerValue]
		ifFalse: [self error: 'Component did not answer.']
