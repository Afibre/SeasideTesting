content
radioComponentFor: attributes
	| group button |
	group := currentForm
				getOrCreateRadioGroup: (attributes at: 'name' ifAbsent: []).
	button := SCRadioButtonHtmlInput group: group attributes: attributes form: currentForm.
	group addButton: button.
	^ button