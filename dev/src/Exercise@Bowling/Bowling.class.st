"
Bowling score calculator
"
Class {
	#name : 'Bowling',
	#superclass : 'Object',
	#category : 'Exercise@Bowling',
	#package : 'Exercise@Bowling'
}

{ #category : 'mathematical functions' }
Bowling >> scoreAfterRolling: rolls [
	|score i|
	score := 0.
	i := 1.
	[ i <= (rolls size min: 20) ] whileTrue: [
		|roll value|
		roll := rolls at: i.
		i := i + 1.
		value := roll isBowlingStrike
			ifTrue: [ self strikeAt: i in: rolls ]
			ifFalse: [ roll ].
		score := score + roll.
	].
	^ score
]

{ #category : 'mathematical functions' }
Bowling >> strikeAt: i in: rolls [
	|pts|
	pts := 10.
	i <= 20 ifTrue: [ pts := pts + (rolls at: i) + (rolls at: i + 1) ].
	^ pts
]
