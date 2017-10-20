request
addToRequestStream: aStream 
	aStream nextPutAll: selectInput name;
		 nextPut: $=;
		 nextPutAll: value.
	^ true