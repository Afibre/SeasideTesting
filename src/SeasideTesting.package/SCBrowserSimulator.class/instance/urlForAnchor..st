request/response
urlForAnchor: anAnchor 
	^ ((anAnchor asString beginsWith: 'http:')
			or: [anAnchor asString notEmpty and: [anAnchor asString first = $/]])
		ifTrue: [anAnchor asString]
		ifFalse: [baseUrl , anAnchor asString]