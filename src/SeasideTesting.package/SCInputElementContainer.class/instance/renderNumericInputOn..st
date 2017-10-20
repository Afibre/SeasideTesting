rendering
renderNumericInputOn: html 
	self
		renderLabel: 'Numeric Input'
		input: [html textInput id: 'numeric-input';
				 setFocus;
				 value: numericInput;
				
				callback: [:value | numericInput := value asInteger]]
		output: numericInput printString
		on: html
