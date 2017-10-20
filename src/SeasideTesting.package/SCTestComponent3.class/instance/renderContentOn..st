rendering
renderContentOn: html 
	html form
		with: [html text: 'field1: '.
			html textInput
				id: 'field1';
				on: #field1 of: self.
			html break.
			html text: 'field2: '.
			html textInput
				id: 'field2';
				on: #field2 of: self.
			html break.
			html submitButton
				id: 'button1';
				callback: [self button1Pressed];
				value: 'button1'.
			html submitButton
				id: 'button2';
				callback: [self button2Pressed];
				value: 'button2']