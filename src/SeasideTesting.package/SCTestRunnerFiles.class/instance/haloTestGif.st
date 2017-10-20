uploaded
haloTestGif
	| xxxCache |
	xxxCache := #(nil ) beMutable.
	(xxxCache at: 1) isNil
		ifTrue: [xxxCache at: 1 put: #(71 73 70 56 57 97 16 0 16 0 240 0 49 63 63 63 212 212 212 33 249 4 1 0 0 1 0 44 0 0 0 0 16 0 16 0 0 2 37 140 143 169 203 224 239 154 2 108 81 4 115 160 113 215 11 26 23 38 150 94 18 158 227 36 114 91 246 160 21 43 91 240 58 231 121 1 0 59 ) asByteArray].
	^ xxxCache at: 1