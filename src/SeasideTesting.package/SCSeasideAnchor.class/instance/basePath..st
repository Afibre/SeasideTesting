accessing
basePath: aString 
	(fullUrl findTokens: '/') first = fullUrl 
		ifTrue: [fullUrl := aString , fullUrl]