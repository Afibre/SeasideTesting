parsing
driver
	^ driver ifNil: [ driver := SAXDriver saxHandler: self ]