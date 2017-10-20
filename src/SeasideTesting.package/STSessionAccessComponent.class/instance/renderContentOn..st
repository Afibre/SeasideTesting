rendering
renderContentOn: html
	html text: 'Session class: '.
	html span id: #sessionClass; with: self session class name