rendering
renderRequestOn: html 
	"Doesn't currently work. Not called."
	html heading level: 1; with: 'This page was submitted with: '.
	html break.
	html text: (history at: currentLocation) key stream contents