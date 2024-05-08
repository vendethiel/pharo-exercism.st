Extension { #name : 'Character' }

{ #category : '*Exercise@Luhn' }
Character >> asDigit [
	"XXX refactor to "
	|charCode|
	charCode := self charCode.
	charCode < 48 ifTrue: [ ^nil ].
	charCode > 57 ifTrue: [ ^nil ].
	^ charCode - 48
]
