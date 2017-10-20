rendering
renderTextInputOn: html 
	"same method as in superclass except for id= attributes"
	html form
		id:  'textInput-form'; 
		with: 
			[html span
					id: 'textInput-banner';
					with: message.
			html paragraph.
			html textInput
					id: 'text-message';
					on: #message of: self.
			html submitButton]