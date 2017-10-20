private
httpGetRequestStreamFor: url 
	^ ('GET ' , url , ' HTTP/1.0' , String crlf , self cookieString , String crlf) readStream