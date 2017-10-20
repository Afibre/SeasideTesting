Running
testCustomSessionClass
	self newApplicationWithRootClass: STSessionAccessComponent.
	app preferenceAt: #sessionClass put: STSessionForTest.
	self establishSession.
	self assert: self session class = STSessionForTest.
	self assert: (self lastResponse entityWithId: #sessionClass) contentString = 'STSessionForTest'