forms
forms
	| descendentForms |
	descendentForms := OrderedCollection new.
	self entities do: [:entity | entity ifNotNil: [descendentForms addAll: entity forms]].
	^self localForms , descendentForms