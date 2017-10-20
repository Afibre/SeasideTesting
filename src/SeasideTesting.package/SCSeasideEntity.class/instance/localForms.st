forms
localForms
	^self entities select: [:each | each notNil and: [each isSeasideForm]]