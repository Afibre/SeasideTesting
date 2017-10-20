tests
testDownloadFileLink
	self newApplicationWithRootClass: SCFileDownloadComponent.
	self establishSession.
	self followAnchor: (self lastResponse anchorWithLabel: 'Download file').
	self assert: self lastResponse contents 
				= 'some text that may be read from somewhere'