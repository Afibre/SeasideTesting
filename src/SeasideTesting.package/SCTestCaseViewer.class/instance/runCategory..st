callbacks
runCategory: categoryString
	| testClasses suite |
	testClasses := self testCasesByCategory at: categoryString.
	suite := SeasideTestingPlatformSupport testSuiteClass new.
	testClasses do: [:each | suite addTest: each suite].
	self call: (SCTestRunner forCase: suite)