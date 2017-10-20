rendering
renderContentOn: html 
	| d |
	self renderFilterFormOn: html.
	d := self testCasesByCategory.
	(self sortedCategories
		select: [:category | self filterString match: category])
		do: [:category | 
			html heading
				level: 2;
				with: [html anchor
						callback: [self runCategory: category];
						with: category].
			html orderedList 
				with: [((d at: category)
						asSortedCollection: [:x :y | x name <= y name])
						do: [:case | self renderCase: case on: html]]]