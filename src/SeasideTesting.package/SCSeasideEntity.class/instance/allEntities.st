parts
allEntities
	| result |
	result := OrderedCollection new.
	result addAll: self entities.
	self entities do: [:entity | entity ifNotNil: [result addAll: entity allEntities]].
	^result