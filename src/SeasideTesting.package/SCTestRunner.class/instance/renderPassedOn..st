rendering
renderPassedOn: html 
	html heading level: 3; with: 'Passed:'.
	result passed
		do: [:each | 
			html span class: 'passed-test'; with: each printString.
			html space.
			self renderBrowserAnchorFor: each on: html.
			html space.
			self renderHistoryAnchorFor: each on: html.
			html break].
	html horizontalRule