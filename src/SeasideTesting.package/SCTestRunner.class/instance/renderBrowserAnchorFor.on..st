rendering
renderBrowserAnchorFor: aTestCase on: html 
	html popupAnchor
		callback: [self call: (WABrowser
							fullOnClass: aTestCase class 
							selector: aTestCase selector)];
		extent: 825@560;
		name: 'browse';
		with: 'Browse'