dispatcher
ensureEntryPointExists
	(WADispatcher default handlers includesKey: self entryPointKey)
		ifFalse: [WAAdmin register: WADispatcher at: self entryPointKey]