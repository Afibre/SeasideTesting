tests
testSelect
	| form |
	self newApplicationWithRootClass: self htmlTestClass.
	self establishSession.
	form := self lastResponse formWithId: 'select-form'.
	(form selectListWithId: 'select-list')
		selectOptionWithText: '7'.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component number = 7.
	form := self lastResponse formWithId: 'select-form'.
	self
		should: [(form selectListWithId: 'select-list')
				selectOptionWithText: '15']
		raise: Error.
	(form selectListWithId: 'select-list')
		value: '2'.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component number = 2.
	self should: [form buttonWithValue: '22'] raise: Error.