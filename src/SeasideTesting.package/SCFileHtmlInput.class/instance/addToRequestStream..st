request
addToRequestStream: aStream
	^self value
		ifNil: [false]
		ifNotNil: [super addToRequestStream: aStream]