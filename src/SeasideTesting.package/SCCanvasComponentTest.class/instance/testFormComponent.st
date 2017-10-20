running
testFormComponent
	| form |
	self newApplicationWithRootClass: SCTestComponent7.
	form := self establishSession forms first.
	self submitForm: form pressingButton: form buttons first.
	self assert: (self componentAnswered: true)