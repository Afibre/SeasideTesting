running
testNotInfiniteLoop
	"Make sure that tasks which don't call anything don't cause an infinite loop"
	self newApplicationWithRootClass: SCDoNothingTask.
