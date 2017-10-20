accessing
filterString
	^(filterString isNil or: [filterString isEmpty]) ifTrue: ['*'] ifFalse: [filterString]