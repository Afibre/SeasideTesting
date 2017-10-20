as yet unclassified
testException
	"This test will produce an error, this is the correct behavior.  I use it to ensure that SeasideTesting properly handles errors during callback processing."
	self newApplicationWithRootClass: SCExceptionDuringCallback.
	self establishSession.
	self followAnchor: self lastResponse anchors first.
	self lastResponse explore