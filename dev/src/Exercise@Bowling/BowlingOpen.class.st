Class {
	#name : 'BowlingOpen',
	#superclass : 'BowlingFrame',
	#category : 'Exercise@Bowling',
	#package : 'Exercise@Bowling'
}

{ #category : 'instance creation' }
BowlingOpen class >> from: a and: b [
	^ self new;
		a: a;
		b: b;
		yourself
]
