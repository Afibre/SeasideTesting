tests
testComponent1
	self newApplicationWithRootClass: SCTestComponent1.
	self establishSession.
	self assert: (self lastResponse stringWithId: 'main') = 'hello'