rendering
renderRadioButtonsOn: html
	"same method as in superclass except for id= attributes"
	html text: booleanList.
	html paragraph.
	html form
		id: 'radio-form';
		with: 
			[booleanList do: [ :association |
				| group |
				group := html radioGroup.
				html text: association key; space.
				group radioButton
					id: association key , '-on';
					accessKey: 'Ctrl-' , association key;
					selected: association value;
					callback: [ association value: true ].
				group radioButton
					id: association key , '-off';
					accessKey: 'Alt-' , association key;
					selected: association value not;
					callback: [ association value: false ].
				html span
					class: 'indented';
					class: 'hint';
					with: 'Shortcuts: ' , 'Ctrl-' , association key , ' Alt-' , association key.
				html break ].
			html submitButton ]