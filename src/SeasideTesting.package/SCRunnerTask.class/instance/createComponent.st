rendering
createComponent
	component := createComponentBlock ifNil: [componentClass new] ifNotNil: [createComponentBlock value].
	checker := SCAnswerChecker new.
	initializationBlock ifNotNil: [initializationBlock value: component].
	component addDecoration: checker.
	^ component