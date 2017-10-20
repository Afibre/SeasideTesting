rendering
renderSelectsOn: html
	"same method as in superclass except for id= attributes"
	html text: number.
	html paragraph.
	html form
		id: 'select-form';
		with: 
			[html
				select id: 'select-list';
				list: (1 to: 10);
				on: #number of: self.
			html submitButton]