content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	"This call corresonds to the Java SAX call
	startElement(java.lang.String namespaceURI, java.lang.String localName,
		java.lang.String qName, Attributes atts)."

	self 
		startElement: aLocalName 
		namespaceURI: aUri 
		namespace: aPrefix 
		attributeList: aDictionary