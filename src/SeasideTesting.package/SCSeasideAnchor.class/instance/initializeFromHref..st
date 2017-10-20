initialize
initializeFromHref: aString 
	| parts |
	self fullUrl: aString.
	parts := aString findTokens: '?'.
	parts isEmpty
		ifTrue: [^ self].
	aString first == $? ifTrue: [parts addFirst: String new].
	self path: parts first.
	parts size > 1
		ifTrue: [(parts second findTokens: '&')
				do: [:each | self variableFromString: each]]