request/response
establishSessionAtBase: baseUrlString 
	| req |
	req := ZnRequest readFrom: (self httpGetRequestStreamFor: baseUrlString).
	baseUrl := baseUrlString.
	^ self issueRequestUntilNotMoved: req