accessing
sortedCategories
	| sc |
	sc := SortedCollection new.
	self testCasesByCategory keys do: [:cat | sc add: cat].
	^sc