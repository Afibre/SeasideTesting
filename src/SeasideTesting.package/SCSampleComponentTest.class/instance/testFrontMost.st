tests
testFrontMost
	self newApplicationWithRootClass: SCTestComponent5.
	self establishSession.
	self assert: (self frontMostComponent isKindOf: SCTestComponent5).
	self followAnchor: self lastResponse anchors first.
	self assert: (self frontMostComponent isKindOf: SCTestComponent4).
	self followAnchor: (self lastResponse anchorWithLabel: 'third link').
	self assert: (self frontMostComponent isKindOf: SCTestComponent5)