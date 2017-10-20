Running
testSelectedDate
	| selected anchors |
	self newApplicationWithRootClass: WAMiniCalendar initializeWith: [:cal |
		cal canSelectBlock: [:date | true].
		cal selectBlock: [:date | selected := date]].
	self establishSession.
	self assert: selected isNil.
	anchors := self lastResponse anchorsWithLabel: (Date today dayOfMonth printString).
	self followAnchor: anchors last.
	self assert: selected = Date today.