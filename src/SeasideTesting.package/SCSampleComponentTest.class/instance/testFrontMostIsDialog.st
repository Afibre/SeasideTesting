tests
testFrontMostIsDialog
	self newApplicationWithRootClass: SCTestComponent5.
	self establishSession.
	self followAnchor: (self lastResponse anchors second).
	self assert: (self frontMostComponent isKindOf: WAFormDialog)