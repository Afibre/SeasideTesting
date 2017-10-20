rendering
renderContentOn: html 
	html render: component.
	html orderedList
		list: self requests;
		labels: [:request | request url printString , ': ' , request fields printString]