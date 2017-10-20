parsing
parser
	| parser |
	self configuration parserClass: self class.
	parser := (XMLParser driver: self driver on: input).
	parser tokenizer 
		entity: 'nbsp' 
		put: (DTDEntityDeclaration name: 'nbsp' value: ' ').
	^ parser