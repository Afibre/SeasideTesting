private
cookieString
	| out |
	self cookies isEmpty
		ifTrue: [^ ''].
	out := WriteStream on: String new.
	out nextPutAll: 'Cookie:'.
	self cookies values
		do: [:cookie | out nextPutAll: ' ' , cookie key , '=' , cookie value]
		separatedBy: [out nextPut: $;].
	out nextPutAll: String crlf.
	^ out contents