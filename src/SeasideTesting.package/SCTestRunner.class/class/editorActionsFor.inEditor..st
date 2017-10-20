seaside plugin
editorActionsFor: anEntryPoint inEditor: anEditor
	| rootClass |
	(anEntryPoint isKindOf: WAApplication)
		ifFalse: [^#()].
	rootClass := anEntryPoint rootComponent.
	(rootClass isNil or: [rootClass hasTestSuite not])
		ifTrue: [^#()].

	^OrderedCollection new
		add: ((Dictionary new)
				at: #label put: 'test';
				at: #action put: [anEditor call: ((self forCase: rootClass suite) addDecoration: (WAWindowDecoration new title: 'Test runner'); yourself)];
				yourself);
		yourself