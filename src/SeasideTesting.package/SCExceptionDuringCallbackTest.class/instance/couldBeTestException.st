as yet unclassified
couldBeTestException
	self newApplicationWithRootClass: SCExceptionDuringCallback.
	self establishSession.
	self should: [self followAnchor: self lastResponse anchors first]
		raise: SCTestException