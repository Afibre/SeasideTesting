accessing
testCases
	^Preferences testRunnerShowAbstractClasses 
		ifTrue: [SCComponentTestCase allSubclasses]
		ifFalse: [SCComponentTestCase allSubclasses reject: [:cls | cls isAbstract]]