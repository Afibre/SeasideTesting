request
addToRequestStream: aStream 
	self selectedOptions
		do: [:option | option addToRequestStream: aStream] separatedBy: [aStream nextPut: $&].
	^self selectedOptions notEmpty