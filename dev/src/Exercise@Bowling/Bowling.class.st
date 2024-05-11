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
	|frames|
	frames := self splitFrames: rolls.
	^ (frames collect: #pins) sum
]

{ #category : 'mathematical functions' }
Bowling >> splitFrames: rolls [
	^ Array streamContents: [ :out |
		|i|
		i := 1.
		[i <= rolls size] whileTrue: [
			|roll|
			roll := rolls at: i.
			i := i + 1.
			roll isBowlingStrike
				ifTrue: [ out put: BowlingFrame strike ]
				ifFalse: [
					out put: (BowlingFrame from: roll and: (rolls at: i)).
					i := i + 1. "skip next"
				]
		].
	]
]
