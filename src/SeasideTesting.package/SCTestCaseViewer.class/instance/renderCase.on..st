rendering
renderCase: case on: html 
	^html listItem with:
		[html anchor
			callback: [self runCase: case];
			with: case name]