tests
testYes
	| form |
	self newApplicationWithRootClass: WAYesOrNoDialog.
	form := self establishSession forms first.
	self submitForm: form pressingButton: (form buttonWithValue: 'Yes').
	self assert: self answer = true