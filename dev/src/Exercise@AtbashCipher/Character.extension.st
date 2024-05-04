Extension { #name : 'Character' }

{ #category : '*Exercise@AtbashCipher' }
Character >> atbashShift [
	^ (97 + (26 - 1 - (self charCode - 97))) asCharacter
]
