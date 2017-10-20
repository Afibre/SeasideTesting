Running
testDisplay
	| form |
	self newApplicationWithRootClass: SCFormDemo.
	self establishSession.
	form := self lastResponse forms first.
	form textInputWithId: 'name' value: 'Bob Smith'.
	form textInputWithId: 'age' value: '40'.
	self submitForm: form pressingButton: form buttons first.
	self assert: (self lastResponse entitiesNamed: 'h3') first contentString 
				= 'Hello Bob Smith.  You are 40 years old.'