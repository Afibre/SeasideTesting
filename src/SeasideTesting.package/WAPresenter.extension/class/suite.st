*SeasideTesting
suite
	^ (Smalltalk hasClassNamed: self testSuiteName)
		ifTrue: [(Smalltalk classNamed: self testSuiteName) suite]