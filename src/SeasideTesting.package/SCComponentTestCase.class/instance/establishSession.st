request/response
establishSession
 	^ self checkResponseForError: (self browser establishSessionAtBase: app url asString)