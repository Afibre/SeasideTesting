stack
addEntity: entity
	self stack notEmpty ifTrue: [self top addEntity: entity].
	self push: entity