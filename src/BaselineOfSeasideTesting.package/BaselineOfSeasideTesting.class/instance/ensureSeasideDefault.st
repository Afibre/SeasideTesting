as yet unclassified
ensureSeasideDefault
	"Declares a default server adaptor to ensure we can use WAServerAdaptor default to run the tests."
	| adaptorClass |
	
	adaptorClass := Smalltalk at: #WAServerAdaptor ifAbsent: [ nil ].
	adaptorClass default ifNotNil: [ ^ self ].
	(Smalltalk at: #ZnZincServerAdaptor) port: 8080.