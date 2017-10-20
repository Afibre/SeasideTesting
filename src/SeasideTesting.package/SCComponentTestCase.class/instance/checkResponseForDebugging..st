private
checkResponseForDebugging: response 
	| a finalResponse |
	finalResponse := response.
	self isDebugging
		ifTrue: [a := response anchorWithLabel: 'Debug' ifNone: [^finalResponse].
			[finalResponse := self followAnchor: a] fork.
			self halt: 'Browser waiting for response, proceed when you''re done debugging.'].
	^ finalResponse