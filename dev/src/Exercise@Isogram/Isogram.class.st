"
Isogram
"
Class {
	#name : 'Isogram',
	#superclass : 'Object',
	#category : 'Exercise@Isogram',
	#package : 'Exercise@Isogram'
}

{ #category : 'testing' }
Isogram >> isIsogramPhrase: str [ 
	|clean|
	clean := str asLowercase onlyLetters.
	^ clean asSet size = clean size
]
