content
startGenericElement: elementName attributeList: attributeList 
	| entity |
	entity := SCSeasideGenericEntity new tag: elementName;
				 attributes: attributeList.
	self addEntity: entity