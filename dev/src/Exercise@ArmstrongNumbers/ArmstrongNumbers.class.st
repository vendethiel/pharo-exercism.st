"
Armstrong number check
"
Class {
	#name : 'ArmstrongNumbers',
	#superclass : 'Object',
	#category : 'Exercise@ArmstrongNumbers',
	#package : 'Exercise@ArmstrongNumbers'
}

{ #category : 'api' }
ArmstrongNumbers >> digits: n [ 
	^ n asString collect: [ :d | d asString asNumber ] as: Array
]

{ #category : 'testing' }
ArmstrongNumbers >> isArmstrongNumber: n [ 
	|digits size |
	digits := self digits: n.
	size := digits size.
	^ (digits collect: [ :x | x ** size ]) sum = n
]
