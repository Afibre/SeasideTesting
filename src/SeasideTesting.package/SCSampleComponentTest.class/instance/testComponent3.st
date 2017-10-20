tests
testComponent3
	| form |
	self newApplicationWithRootClass: SCTestComponent3.
	self establishSession.
	form := self lastResponse forms first.
	form textInputWithId: 'field1' value: 'bob'.
	form textInputWithId: 'field2' value: 'jane'.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component field1 = 'bob'.
	self assert: self component field2 = 'jane'