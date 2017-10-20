rendering
renderFailedOn: html 
	html heading: 'Failed:' level: 3.
	result failures
		do: [:each | 
			html span class: 'failed-test'; with: each printString.
			html space.
			html anchor
				callback: [each debugAsFailure];
				with: 'Debug'.
			html space.
			self renderBrowserAnchorFor: each on: html.
			html space.
			self renderHistoryAnchorFor: each on: html.
			html break].
	html horizontalRule 