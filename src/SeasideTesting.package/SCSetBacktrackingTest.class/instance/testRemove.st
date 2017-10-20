tests
testRemove
	| form input |
	self newApplicationWithRootClass: SCSetBacktrackingComponent.
	self establishSession.
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry1'.
	self submitForm: form pressingButton: (form buttonWithValue: 'add').
	self assert: (self component set includes: 'entry1').
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry1'.
	self submitForm: form pressingButton: (form buttonWithValue: 'remove').
	self deny: (self component set includes: 'entry1').
