tests
testBack
	self newApplicationWithRootClass: SCTestComponent4.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithLabel: 'first link').
	self assert: self component firstSent.
	self deny: self component secondSent.
	self followAnchor: (self lastResponse anchorWithLabel: 'second link').
	self backAndRefresh.
	self assert: self component firstSent.
	self deny: self component secondSent