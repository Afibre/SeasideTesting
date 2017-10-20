rendering
renderContentOn: html 
	html heading
		level:1;
		with: 'Tests'.
	html break.
	html anchor
		document: 'some text that may be read from somewhere'
		mimeType: 'text/plain'
		fileName: 'myfilename.txt';
		with: 'Download file'