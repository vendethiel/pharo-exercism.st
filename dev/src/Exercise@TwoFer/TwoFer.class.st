"
two-fer'
"
Class {
	#name : 'TwoFer',
	#superclass : 'Object',
	#category : 'Exercise@TwoFer',
	#package : 'Exercise@TwoFer'
}

{ #category : 'string-manipulation' }
TwoFer >> who [
    ^ self who: 'you'
]

{ #category : 'string-manipulation' }
TwoFer >> who: name [
    ^ 'One for {1}, one for me.' format: { name }
]
