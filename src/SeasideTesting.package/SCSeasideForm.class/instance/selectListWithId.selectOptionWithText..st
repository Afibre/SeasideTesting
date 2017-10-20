inputs
selectListWithId: aStringId selectOptionWithText: text 
	(self selectListWithId: aStringId) selectOptionWithText: text ifNone: [self error: 'No such option.']