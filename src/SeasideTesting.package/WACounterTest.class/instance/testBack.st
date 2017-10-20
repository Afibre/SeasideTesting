tests
testBack
	self newApplicationWithRootClass: WACounter.
	self establishSession.
	self
		followAnchor: (self lastResponse anchorWithLabel: '++').
	self
		followAnchor: (self lastResponse anchorWithLabel: '++').
	self assert: self component count = 2.
	self back.
	self
		followAnchor: (self lastResponse anchorWithLabel: '++').
	self assert: self component count = 2