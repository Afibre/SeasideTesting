Running
testDefaultSessionClass
	self newApplicationWithRootClass: STSessionAccessComponent.
	self establishSession.
	self assert: self session class = WASession.
	self assert: (self lastResponse entityWithId: #sessionClass) contentString = 'WASession'