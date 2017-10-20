request
addToRequestStream: aStream 
	^ self value
		and: [self name
				ifNil: [false]
				ifNotNil: [aStream nextPutAll: self name.
				aStream nextPut: $=.
				aStream nextPutAll: internalValue.
				true]]