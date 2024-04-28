Class {
	#name : 'TwoFer',
	#superclass : 'Object',
	#category : 'Exercise@TwoFer',
	#package : 'Exercise@TwoFer'
}

{ #category : 'as yet unclassified' }
TwoFer >> who [
    ^ 'One for you, one for me.'
]

{ #category : 'as yet unclassified' }
TwoFer >> who: name [
    ^ 'One for ', name, ', one for me.'
]
