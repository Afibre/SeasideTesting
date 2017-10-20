request/response
followAnchor: anAnchor 
	| response |
	anAnchor basePath: app url asString.
	response := self browser followAnchor: anAnchor.
	^self checkResponseForError: response