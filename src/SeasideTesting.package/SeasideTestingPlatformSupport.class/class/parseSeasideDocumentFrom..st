*SeasideTesting
parseSeasideDocumentFrom: aStream
	| parser |
	parser := SCSeasideResponseParser on: aStream.
	parser document: SCSeasideResponse new.
	parser parseDocument.
	^parser document