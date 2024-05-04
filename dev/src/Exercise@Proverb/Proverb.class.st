"
Proverb
"
Class {
	#name : 'Proverb',
	#superclass : 'Object',
	#classInstVars : [
		'mapping'
	],
	#category : 'Exercise@Proverb',
	#package : 'Exercise@Proverb'
}

{ #category : 'testing' }
Proverb >> reciteStrings: xs [ 
	xs size < 1 ifTrue: [ ^ #() ].
	^ (xs overlappingPairsCollect: [ :x :y | 'For want of a {1} the {2} was lost.' format: { x. y } ])
		copyWith: ('And all for the want of a {1}.' format: {xs first})
]
