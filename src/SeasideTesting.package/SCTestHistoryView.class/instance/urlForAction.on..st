rendering
urlForAction: aBlock on: html
	"This is missing from our branch of Seaside"
	| url |
	url := html context actionUrl withParameter: (html callbacks registerActionCallback: aBlock).
	^url displayString