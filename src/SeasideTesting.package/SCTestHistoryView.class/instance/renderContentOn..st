rendering
renderContentOn: html 
	html heading level: 2;
		 with: 'Test view replay page ' , currentLocation printString , ' of ' , history size printString.
	html anchor 
		callback: [self answer];
		with: 'close'.
	html space.
	currentLocation > 1
		ifTrue: [html anchor
				callback: [self previousPage];
				with: '<<'].
	html text: '--'.
	currentLocation < history size
		ifTrue: [html anchor
				callback: [self nextPage];
				with: '>>'].
	html break; horizontalRule.
	self renderCurrentResponseOn: html.
