seaside plugin
haloElementsFor: aTarget inHalo: aHalo
	aTarget class hasTestSuite
		ifFalse: [^#()].
	^OrderedCollection new
		add: ((Dictionary new)
				at: #image put: SCTestRunnerFiles / #haloTestGif;
				at: #action put: [self forCase: aTarget class suite];
				at: #title put: 'Run test suite';
				yourself);
		yourself

