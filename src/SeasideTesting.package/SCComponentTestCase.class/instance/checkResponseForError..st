private
checkResponseForError: response 
	response status = 200
		ifFalse: [ self error: 'Response contains HTTP error' ].
	^ self checkResponseForDebugging: response