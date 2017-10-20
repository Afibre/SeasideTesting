request handling
createSession
	| session |
	session := self sessionClass new.
	testCase sessionCreated: session.
	^session