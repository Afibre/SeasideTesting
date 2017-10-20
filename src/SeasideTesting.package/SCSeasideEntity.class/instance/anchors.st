anchors
anchors
	| descendentAnchors |
	descendentAnchors := OrderedCollection new.
	self entities do: [:entity | entity ifNotNil: [descendentAnchors addAll: entity anchors]].
	^self localAnchors , descendentAnchors