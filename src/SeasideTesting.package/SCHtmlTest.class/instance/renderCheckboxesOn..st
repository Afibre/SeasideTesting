rendering
renderCheckboxesOn: html
	"same method as in superclass except for id= attributes"
	html text: booleanList.
	html paragraph.
	html form
		id: 'checkbox-form';
		with:
			[booleanList
				do: [:association | 
					html text: association key;
						space.
					html checkbox
						id: 'cb-' , association key;
						accessKey: 'Ctrl-' , association key asUppercase;
						on: #value of: association.
					html span
						class: 'indented';
						class: 'hint';
						with: 'Shortcuts: ' , 'Ctrl-' , association key asUppercase.
					html break].
			html submitButton]