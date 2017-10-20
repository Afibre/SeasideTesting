tests
testNo
	| form |
	self newApplicationWithRootClass: WAYesOrNoDialog.
	form := self establishSession forms first.
	self submitForm: form pressingButton: (form buttonWithValue: 'No').
	self assert: (self componentAnswered: false)