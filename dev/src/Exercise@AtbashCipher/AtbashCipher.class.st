"
Atbash Cipher
"
Class {
	#name : 'AtbashCipher',
	#superclass : 'Object',
	#category : 'Exercise@AtbashCipher',
	#package : 'Exercise@AtbashCipher'
}

{ #category : 'encryption' }
AtbashCipher >> encodePhrase: cypher [
	^ cypher onlyLetters asLowercase collect: [ :l | (97 + (26 - 1 - (l charCode - 97))) asCharacter ]
]
