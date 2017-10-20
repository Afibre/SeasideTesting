dispatcher
dispatcher
	self ensureEntryPointExists.
	^WADispatcher default handlers at: self entryPointKey