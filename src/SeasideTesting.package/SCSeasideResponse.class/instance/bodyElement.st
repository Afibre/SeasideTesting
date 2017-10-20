parts
bodyElement
	^self entities first entities detect: [:each | each tag asUppercase = 'BODY']