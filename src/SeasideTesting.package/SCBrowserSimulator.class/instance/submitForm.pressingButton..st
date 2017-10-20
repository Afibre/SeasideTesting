request/response
submitForm: form pressingButton: button 
	| req url |
	form isNil
		ifTrue: [self error: 'form should be nil'].
	url := self urlForForm: form.
	url
		ifNil: [url := self history last key url].
	req := ZnRequest readFrom: (self
		httpPostRequestStreamForUrl: url
		data: (form httpDataWithButton: button)).
	^ self issueRequestUntilNotMoved: req