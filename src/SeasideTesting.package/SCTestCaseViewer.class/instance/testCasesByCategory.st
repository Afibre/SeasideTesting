accessing
testCasesByCategory
	| d |
	d := Dictionary new.
	self testCases do: [:case |
		(d at: case category ifAbsentPut: [OrderedCollection new]) add: case].
	^d