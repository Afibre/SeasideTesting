request
addToRequestStream: aStream 
	self value ifTrue: [aStream nextPutAll: self name].
	^self value