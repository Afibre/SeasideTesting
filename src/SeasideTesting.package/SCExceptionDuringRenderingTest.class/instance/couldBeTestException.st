as yet unclassified
couldBeTestException
	self newApplicationWithRootClass: SCExceptionDuringRendering.
	self should: [self establishSession] raise: SCTestException
