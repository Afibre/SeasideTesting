posting
httpDataWithButton: button 
	| resultStream nonButtonInputs |
	resultStream := WriteStream on: String new.
	button ifNotNil: [((button addToRequestStream: resultStream) and: [self inputs notEmpty]) 
		ifTrue: [resultStream nextPut: $&]].
	nonButtonInputs := self inputs reject: [:each | each isButton].
	nonButtonInputs allButLast do: 
			[:each | 
			(each addToRequestStream: resultStream) ifTrue: [resultStream nextPut: $&]].
	nonButtonInputs isEmpty ifFalse:[nonButtonInputs last addToRequestStream: resultStream].
	^resultStream contents