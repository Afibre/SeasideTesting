accessing
renderContentOn: html 
	self firstSent
		ifFalse: [html anchor
				callback: [self sendFirst];
				with: 'first link'].
	html text: 'hello'.
	self secondSent
		ifFalse: [
			html anchor
				id: 'second';
				callback: [self sendSecond];
				with: 'second link'].
	self thirdSent
		ifFalse: [
			html anchor
				id: 'third';
				callback: [self sendThird];
				with: 'third link']