parsing
parseDocumentFromResponse: aResponse
	^((aResponse contentType asString beginsWith: 'text/html') 
		or: [aResponse contentType asString beginsWith: 'text/xhtml']) 
	ifTrue: [
		(self parseDocumentFrom: aResponse contents) 
			httpResponse: aResponse; 
			yourself]
	ifFalse: [
		SCSeasideResponse new 
			httpResponse: aResponse; 
			yourself ]