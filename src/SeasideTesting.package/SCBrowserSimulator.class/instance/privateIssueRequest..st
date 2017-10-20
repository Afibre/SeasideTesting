private
privateIssueRequest: anHttpRequest 
	| response cookie |
	response := SeasideTestingPlatformSupport
		issueRequest: anHttpRequest
		responseSemaphore: responseSema.
	response
		ifNil: [^ self error: 'What do I do here?'].
	response cookies
		ifNotNil: [:col | col
				do: [:cookieString | 
					cookie := self parseCookieString: cookieString.
					self cookies at: cookie key put: cookie]].
	^ response