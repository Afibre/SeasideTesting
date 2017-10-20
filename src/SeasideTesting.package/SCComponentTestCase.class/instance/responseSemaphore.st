application
responseSemaphore
	^ responseSema
		ifNil: [responseSema := Semaphore new]