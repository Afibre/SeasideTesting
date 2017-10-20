rendering
renderCurrentResponseOn: html 
	| item |
	currentLocation = 0
		ifTrue: [^ nil].
	item := history at: currentLocation.
	html div
		class: 'contentFrame';
		with: [html iframe
				url: (self
						urlForAction: [(SCTestHistoryRenderLoop new page: item value fullStringContents) run]
						on: html)]