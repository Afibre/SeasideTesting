component
frontMostComponent
	^ runnerTask actualComponent visiblePresentersDo: [:each |
		each isDecoration ifFalse: [^each]]