application
newApplicationWithRootClass: aComponentClass createWith: aBlock 
	app := SCTesterApplication
				path: (self applicationPathForClass: aComponentClass).
	app testCase: self.
	app configuration addAncestor: WARenderLoopConfiguration instance.
	self dispatcher register: app at: app name.
	self configureApplicationForComponent: aComponentClass.
	runnerTask createComponentBlock: aBlock.
	^ app