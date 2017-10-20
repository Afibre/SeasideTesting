request
addToRequestStream: aStream
	self name ifNil: [^false].
	aStream nextPutAll: self name.
	self value ifNotNil: [aStream nextPut: $=.
		aStream nextPutAll: self value].
	^true