rendering
renderErrorOn: html 
	html heading level: 3; with: 'Errors:'.
	result errors
		do: [:each | 
			html
				span class: 'error-test'; with: [html text: each printString].
			html space.
			html anchor
				callback: [each debug];
				with: 'Debug'.
			html space.
			self renderBrowserAnchorFor: each on: html.
			html space.
			self renderHistoryAnchorFor: each on: html.
			html break].
	html horizontalRule 