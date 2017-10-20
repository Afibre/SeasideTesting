anchors
localAnchors
	^self entities select: [ :each | each notNil and: [each isAnchor]]