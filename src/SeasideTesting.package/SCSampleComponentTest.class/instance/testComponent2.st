tests
testComponent2
	self newApplicationWithRootClass: SCTestComponent2.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithId: 'first').
	self assert: self component firstSent.
	self deny: self component secondSent.
	self followAnchor: (self lastResponse anchorWithLabel: 'second link').
	self assert: self component firstSent.
	self assert: self component secondSent