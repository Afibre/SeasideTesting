posting
writeHttpDataFor: key value: value on: stream 
	| name |
	name := key.
	value
		ifNil: [^ stream nextPutAll: name].
	value isString
		ifTrue: [stream nextPutAll: name;
				 nextPut: $=;
				 nextPutAll: value]
		ifFalse: [value
				do: [:each | self
						writeHttpDataFor: key
						value: each
						on: stream]
				separatedBy: [stream nextPut: $&]]