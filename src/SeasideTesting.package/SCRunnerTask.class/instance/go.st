rendering
go
	self createComponent.
	self call: component.
	self inform: 'Component answered'