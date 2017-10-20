subclass hooks
configureApplicationForComponent: aComponentClass 
	"This gets sent when SeasideTesting creates the entry point for 
	your test class. Override it to configure your application's 
	session class or other 'preferences' but be sure to do the super 
	send. "
	
	| filter |
	app configuration
		removeParent: WAApplicationConfiguration instance;
		addParent: WARenderLoopConfiguration instance;
		addParent: WAAdmin applicationDefaults.
"	app preferenceAt: #mainClass put: WAFlowMain.
	app preferenceAt: #actionPhaseContinuationClass put: WAFlowActionPhaseContinuation."
	handler := SCTestErrorHandler new.
	handler case: self.
	filter := WAExceptionFilter new.
	filter configuration addParent: WAExceptionFilterConfiguration instance.
	filter configuration at: #exceptionHandler put: handler.
	app addFilter: filter.
	runnerTask := SCRunnerTask new.
	runnerTask componentClass: aComponentClass.
	app preferenceAt: #rootClass put: runnerTask