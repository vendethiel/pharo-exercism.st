Class {
	#name : 'CollatzConjecture',
	#superclass : 'Object',
	#category : 'Exercise@CollatzConjecture',
	#package : 'Exercise@CollatzConjecture'
}

{ #category : 'mathematical functions' }
CollatzConjecture >> stepsFrom: n [
	^  n = 1
		ifTrue: [ 0 ]
		ifFalse: [ 1 + self stepsFrom: (self doStep: n) ]
]
