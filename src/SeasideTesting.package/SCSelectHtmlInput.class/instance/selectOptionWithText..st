value
selectOptionWithText: text
	self selectOptionWithText: text ifNone: [self error: 'No option labeled ' , text.]