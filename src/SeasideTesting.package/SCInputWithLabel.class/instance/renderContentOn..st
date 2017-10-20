rendering
renderContentOn: html
	html form with:
		[html label for: 'someField'; with: 'some text'.
		html textInput id: 'someField'; callback: [:v | value := v].
		html submitButton callback: [self answer]; value: 'button']