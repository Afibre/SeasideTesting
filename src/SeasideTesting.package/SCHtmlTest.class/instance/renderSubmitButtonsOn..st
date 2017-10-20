rendering
renderSubmitButtonsOn: html 
	"same method as in superclass except for id= attributes"
	html text: number.
	html paragraph.
	html form 
		id: 'button-form';
		with: 
			[1 to: 10 do: 
				[:index | 
				html submitButton
						accessKey: 'F' , index displayString;
						callback: [number := index];
						text: index.
				html space]].
	html span
		class: 'hint';
		with: 'Above, you may be able to use F1 .. F10 as shortcuts, if the browser allows you.'