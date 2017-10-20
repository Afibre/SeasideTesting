request/response
submitForm: form pressingButton: button 
	| response |
	response := self browser submitForm: form pressingButton: button.
	^self checkResponseForError: response