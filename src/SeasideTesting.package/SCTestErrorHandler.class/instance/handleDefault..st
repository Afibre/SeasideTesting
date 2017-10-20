actions
handleDefault: e
	(self case shouldDebugError: e) ifFalse: [^self internalError: e].
	^super handleDefault: e