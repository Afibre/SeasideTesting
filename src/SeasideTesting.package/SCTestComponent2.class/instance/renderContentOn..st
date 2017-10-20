accessing
renderContentOn: html 
	html anchor
		id: 'first';
		callback: [self sendFirst];
		with: 'first link'.
	html text: 'hello'.
	html anchor
		id: 'second';
		callback: [self sendSecond];
		with: 'second link'