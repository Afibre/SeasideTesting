utilities
onlyBodyOf: aString 
	| rs result |
	rs := aString readStream.
	rs upToAll: '<body>'.
	result := rs upToAll: '</body>'.
	^ result