tests
testComponent6
	| form list |
	self newApplicationWithRootClass: SCTestComponent6.
	self establishSession.
	form := self lastResponse forms first.
	list := form selectListWithId: 'theList'.
	list selectOptionWithText: 'b'.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component selectedItem = #b