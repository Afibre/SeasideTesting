rendering
renderContentOn: html
	html form:
		[html select
			id: 'theList';
			list: #(a b c);
			selected: #a;
			callback: [:item | self itemSelected: item].
		html textInput
			callback: [].
		html submitButton
			value: 'submit']