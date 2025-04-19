Class {
	#name : 'Binary',
	#superclass : 'Object',
	#category : 'Exercise@Binary',
	#package : 'Exercise@Binary'
}

{ #category : 'mathematical functions' }
Binary >> decimalFromBinary: s [ 
	^ ((s reversed asArray) withIndexCollect: [ :l :i |
		l isBinaryCharacter ifFalse: [ ^ nil ].
		l asString asNumber * (2 raisedTo: i - 1)
	]) sum
]
