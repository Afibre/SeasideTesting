initialize
variableFromString: aString 
	| parts |
	parts := aString findTokens: '='.
	parts isEmpty
		ifTrue: [^ nil].
	parts size = 1
		ifTrue: [^ self anchorNumber: parts first].	
	parts first = '_s' "WARegistry>>handlerField"
		ifTrue: [^ self sessionId: parts second].
	parts first = '_k' "WASession>>actionField"
		ifTrue: [^ self continuationId: parts second]