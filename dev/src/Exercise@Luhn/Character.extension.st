Extension { #name : 'Character' }

{ #category : '*Exercise@Luhn' }
Character >> asDigit [
	"XXX refactor to "
	^ self charCode - 48
]
