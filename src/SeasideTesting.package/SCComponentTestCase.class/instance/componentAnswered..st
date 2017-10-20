answering
componentAnswered: value 
	| checker |
	checker := runnerTask answerChecker.
	^checker hasAnswer and: [checker answerValue = value]