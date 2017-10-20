tests
testSequence1
	| form input |
	self newApplicationWithRootClass: SCSetBacktrackingComponent.
	self establishSession.
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry1'.
	self submitForm: form pressingButton: (form buttonWithValue: 'add').
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry2'.
	self submitForm: form pressingButton: (form buttonWithValue: 'add').
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry3'.
	self submitForm: form pressingButton: (form buttonWithValue: 'add').
	self
		assert:
			(self component set
				includesAll: (Array with: 'entry1' with: 'entry2' with: 'entry3')).
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry1'.
	self
		submitForm: form
		pressingButton: (form buttonWithValue: 'remove').
	self deny: (self component set includes: 'entry1').
	self back.
	self backAndRefresh.
	self assert: (self component set includes: 'entry1').
	form := self lastResponse forms first.
	input := form textInputWithId: 'input'.
	input value: 'entry1'.
	self
		submitForm: form
		pressingButton: (form buttonWithValue: 'remove').
	self deny: (self component set includes: 'entry1')