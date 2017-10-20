tests
testAnswer
	self newApplicationWithRootClass: SCTestComponent4.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithLabel: 'third link').
	self assert: (self componentAnswered: 1234)