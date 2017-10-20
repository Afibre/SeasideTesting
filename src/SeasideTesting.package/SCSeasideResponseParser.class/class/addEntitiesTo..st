private
addEntitiesTo: aDict
	aDict at: 'nbsp' put: (DTDEntityDeclaration name: 'nbsp' value: Character space)