*SeasideTesting
issueRequest: anHttpRequest responseSemaphore: semaphore
	| response completed start |
	completed := false.
	
	[
		response := WAServerAdaptor default process: anHttpRequest.
		completed := true.
		semaphore signal ] fork.
	start := DateAndTime now.
	[ completed ] whileFalse: [
		"(DateAndTime now - start) > 1 second 
			ifTrue: [ self error: 'Response timeout' ]."
		semaphore waitTimeoutMSecs: 10. 
		World doOneCycle ].
	
	^ response