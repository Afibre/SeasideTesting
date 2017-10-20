tests
testCheckbox
	| form |
	self newApplicationWithRootClass: self htmlTestClass.
	self establishSession.
	form := self lastResponse formWithId: 'checkbox-form'.
	(form checkboxWithId: 'cb-a') check.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component booleanList first value.
	form := self lastResponse formWithId: 'checkbox-form'.
	(form checkboxWithId: 'cb-a') uncheck.
	self submitForm: form pressingButton: form buttons first.
	self deny: self component booleanList first value