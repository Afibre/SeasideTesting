rendering
renderContentOn: html
	html form with: [
		html text: 'Name: '.
		html textInput
			id: 'name';
			on: #name of: self.
		html break.
		html text: 'Age: '.
		html textInput
			id: 'age';
			on: #age of: self.
		html break.
		html submitButton
			callback: [self displayInfo]; 
			value: 'Display']