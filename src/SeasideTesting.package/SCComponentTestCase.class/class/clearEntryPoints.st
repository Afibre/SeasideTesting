dispatcher
clearEntryPoints
	"self clearEntryPoints"
	(WADispatcher default handler includesKey: self entryPointKey)
		ifTrue: [WADispatcher default register: WADispatcher at: self entryPointKey]