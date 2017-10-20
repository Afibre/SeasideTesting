private
allElementsIn: element addTo: result 
	result add: element.
	element
		elementsDo: [:subElement | self allElementsIn: subElement addTo: result]