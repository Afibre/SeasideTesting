request handling
performRequest: aRequest 
	self testBuilder ifNotNilDo: [:tb | tb submittedRequest: aRequest].
	super performRequest: aRequest