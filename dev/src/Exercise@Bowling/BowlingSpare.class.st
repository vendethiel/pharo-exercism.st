Class {
	#name : 'BowlingSpare',
	#superclass : 'BowlingFrame',
	#category : 'Exercise@Bowling',
	#package : 'Exercise@Bowling'
}

{ #category : 'instance creation' }
BowlingSpare class >> from: a and: b [
	^ self new;
		a: a;
		b: b;
		yourself
]
