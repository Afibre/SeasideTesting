running
debug
	self resources
		do: [:res | res isAvailable
				ifFalse: [^ res signalInitializationError]].
	[(self class selector: testSelector) makeDebugging; runCase]
		ensure: [self resources
				do: [:each | each reset]]