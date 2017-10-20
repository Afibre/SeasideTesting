instance creation
withAttributes: attributes
	^self new initializeFromHref: (attributes at: 'href'); attributes: attributes; yourself