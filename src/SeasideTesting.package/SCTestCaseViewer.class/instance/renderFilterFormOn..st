rendering
renderFilterFormOn: html
	html form with: 
		[html textInput 
			on: #filterString of: self.
		html submitButton
			callback: []; 
			value: 'Filter']