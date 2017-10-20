subclass hooks
sessionCreated: aSession
	"This is a hook for subclasses that want to perform specific actions in response to session creation (such as initializing a database connection).  Be sure to perform a super send!"
	session := aSession