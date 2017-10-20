private-inputs
getOrCreateRadioGroup: groupName
	^self radioGroups at: groupName ifAbsentPut: [SCRadioGroup named: groupName].