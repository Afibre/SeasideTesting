request/response
followAnchor: anAnchor 
	| req |
	anAnchor ifNil: [ self error: 'Anchor cannot be nil' ].
	req := ZnRequest readFrom: (self httpGetRequestStreamFor: (self urlForAnchor: anAnchor)).
	^ self issueRequestUntilNotMoved: req