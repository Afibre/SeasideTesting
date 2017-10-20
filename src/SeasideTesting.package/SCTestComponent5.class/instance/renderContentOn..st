rendering
renderContentOn: html 
	html anchor
		callback: [self call: SCTestComponent4 new];
		with: 'Show SCTestComponent4'.
	html anchor
		callback: [self inform: 'this is a dialog'];
		with: 'dialog'