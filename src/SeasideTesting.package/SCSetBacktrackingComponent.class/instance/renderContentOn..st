rendering
renderContentOn: html
	html form:
		[html textInput
			id: 'input';
			callback: [:v | value := v].
		html submitButton
			callback: [set add: value];
			value: 'add'.
		html submitButton
			callback: [set remove: value];
			value: 'remove']