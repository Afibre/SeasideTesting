rendering
render
	| response |
	WACurrentSession value
		respond: [:url | 
			response := WAResponse new.
			response headerAt: 'Cache-Control' put: 'No-cache'.
			response stream nextPutAll: page.
			response]