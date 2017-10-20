private
allElementsWithTag: tagName in: element addTo: result 
	element name = tagName 
		ifTrue: [result add: element]
		ifFalse: 
			[element elementsDo: 
					[:subElement | 
					self 
						allElementsWithTag: tagName
						in: subElement
						addTo: result]]