tests
testInitialState
	self newApplicationWithRootClass: WACounter.
	self establishSession.
	self assert: self component count = 0