"
Forth Interpeter
"
Class {
	#name : 'ForthInterpreter',
	#superclass : 'Object',
	#instVars : [
		'stack',
		'aliases'
	],
	#classInstVars : [
		'mapping'
	],
	#category : 'Exercise@Forth',
	#package : 'Exercise@Forth'
}

{ #category : 'class initialization' }
ForthInterpreter class >> initialize [
	mapping := { ';' -> 'semicolon'. '+' -> 'plus'. '-' -> 'minus'. '*' -> 'times'. '/' -> 'div' } asDictionary
]

{ #category : 'accessing' }
ForthInterpreter class >> mapping [
	^ mapping
]

{ #category : 'instance creation' }
ForthInterpreter >> alias: k to: xs [
	k isAllDigits ifTrue: [ Error signal: 'cannot redefine numbers' ].
	aliases at: k put: xs
]

{ #category : 'accessing' }
ForthInterpreter >> all: xs [
	xs do: [ :x | self interpret: x ]
]

{ #category : 'evaluation' }
ForthInterpreter >> div [
	stack add: (self pop2 reduce: [ :a :b |
		a = 0 ifTrue: [ Error signal: 'divide by zero' ].
		(b / a) floor
	])
]

{ #category : 'evaluation' }
ForthInterpreter >> drop [
	self pop
]

{ #category : 'evaluation' }
ForthInterpreter >> dup [
	stack ifEmpty: [ Error signal: 'empty stack' ].
	stack add: stack last
]

{ #category : 'initialization' }
ForthInterpreter >> initialize [
	stack := OrderedCollection new.
	aliases := Dictionary new.
]

{ #category : 'evaluation' }
ForthInterpreter >> interpret: xx [
	|x|
	x := xx asLowercase.
	x isAllDigits
		ifTrue: [ stack add: x asNumber ]
		ifFalse: [
			aliases at: x
				ifPresent: [ :xs | self all: xs ]
				ifAbsent: [ self perform: (self class mapping at: x ifAbsent: [x]) asSymbol ]
		]
]

{ #category : 'evaluation' }
ForthInterpreter >> minus [
	stack add: (self pop2 reduce: [ :a :b | b - a ])
]

{ #category : 'modes' }
ForthInterpreter >> over [
	|temp|
	temp := self pop2.
	stack
		add: temp last;
		add: temp first;
		add: temp last.
]

{ #category : 'shapes' }
ForthInterpreter >> plus [
	stack add: (self pop2 reduce: [ :a :b | a + b ])
]

{ #category : 'removing' }
ForthInterpreter >> pop [
	stack ifEmpty: [ Error signal: 'empty stack' ].
	^ stack removeLast
]

{ #category : 'removing' }
ForthInterpreter >> pop2 [
	stack ifEmpty: [ Error signal: 'empty stack' ].
	stack size = 1 ifTrue: [ Error signal: 'only one value on the stack' ].
	^ { stack removeLast. stack removeLast }
]

{ #category : 'evaluation' }
ForthInterpreter >> stack [
	^ stack asArray
]

{ #category : 'evaluation' }
ForthInterpreter >> swap [
	|temp|
	temp := self pop2.
	stack
		add: temp first;
		add: temp last.
]

{ #category : 'evaluation' }
ForthInterpreter >> times [
	stack add: (self pop2 reduce: [ :a :b | a * b ])
]
