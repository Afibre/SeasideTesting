application
newApplicationWithRootClass: aComponentClass initializeWith: aBlock 
	app := SCTesterApplication
				path: (self applicationPathForClass: aComponentClass).
	app testCase: self.
	app configuration addParent: WARenderLoopConfiguration instance.
	self dispatcher register: app at: app name.
	self configureApplicationForComponent: aComponentClass.
	runnerTask initializationBlock: aBlock.
	^ app