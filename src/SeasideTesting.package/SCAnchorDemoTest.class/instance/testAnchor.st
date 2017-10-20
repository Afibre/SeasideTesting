Running
testAnchor
	self newApplicationWithRootClass: SCAnchorDemo.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithId: 'first').
	self assert: (self lastResponse entitiesNamed: 'h3') first contentString 
				= 'pressed'