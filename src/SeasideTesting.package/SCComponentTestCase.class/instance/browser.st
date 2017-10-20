accessing
browser
	^ browser
		ifNil: [browser := SCBrowserSimulator new
			responseSemaphore: self responseSemaphore;
			yourself]