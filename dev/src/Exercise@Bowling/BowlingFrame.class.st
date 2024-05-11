Class {
	#name : 'BowlingFrame',
	#superclass : 'Object',
	#category : 'Exercise@Bowling',
	#package : 'Exercise@Bowling'
}

{ #category : 'instance creation' }
BowlingFrame class >> from: a and: b [ 
	^ (a + b) isBowlingStrike
		ifTrue: [ BowlingSpare from: a and: b ]
		ifFalse: [ BowlingOpen from: a and: b ]
]
