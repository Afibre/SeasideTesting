private
httpPostRequestStreamForUrl: url data: postData 
	^ ('POST ' , url , ' HTTP/1.0' , String crlf , 'Content-Length: ' , postData size printString , String crlf , 'Content-type: application/x-www-form-urlencoded' , String crlf , self cookieString , String crlf , postData) readStream