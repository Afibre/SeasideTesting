tests
testDecrement
	self newApplicationWithRootClass: WACounter.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithLabel: '--').
	self assert: self component count = -1.
	self followAnchor: (self lastResponse anchorWithLabel: '--').
	self assert: self component count = -2