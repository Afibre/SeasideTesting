private
parseCookieString: s 
	| parts keyAndValue result |
	parts := s findTokens: ';'.
	keyAndValue := parts first findTokens: '='.
	result := WACookie key: keyAndValue first value: keyAndValue second.
	^result