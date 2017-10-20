request/response
urlForForm: form 
	^ ((form actionUrl beginsWith: 'http:')
			or: [form actionUrl notEmpty
					and: [form actionUrl first = $/]])
		ifTrue: [form actionUrl]
		ifFalse: [baseUrl , form actionUrl asString]