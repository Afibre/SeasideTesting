rendering
renderContentOn: html 
	html heading level: 2; with: case name.
	html anchor callback: [self runTests: case]; with: 'Re-run all'.
	html break.
	html text: result printString.
	html horizontalRule.
	self renderFailedOn: html.
	self renderErrorOn: html.
	self renderPassedOn: html.
	html break.
	html anchor
		callback: [self answer];
		with: 'close'