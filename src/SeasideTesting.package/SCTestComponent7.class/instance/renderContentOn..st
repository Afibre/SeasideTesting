rendering
renderContentOn: html
	html form
		with:
			[html submitButton
				callback: [self answer: true]]