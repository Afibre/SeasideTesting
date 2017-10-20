request/response
issueRequestUntilNotMoved: anHttpRequest 
	| response req newUrl doc |
	req := anHttpRequest.
	[req remoteAddress: ''.
	response := self privateIssueRequest: req.
	(response status = 302 "redirect") or: [response headers includesKey: 'Location']]
		whileTrue: [
			newUrl := response headers at: 'Location'.
			req := ZnRequest readFrom: (self httpGetRequestStreamFor: newUrl)].
	doc :=  SCSeasideResponseParser parseDocumentFromResponse: response.
	self history add: req -> doc.
	^ doc