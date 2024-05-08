"
Robot object simulator
"
Class {
	#name : 'Robot',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'x',
		'y'
	],
	#category : 'Exercise@RobotSimulator',
	#package : 'Exercise@RobotSimulator'
}

{ #category : 'instance creation' }
Robot class >> newFacing: direction atX: x atY: y [ 
	^ self new
		facing: direction;
		x: x;
		y: y.
]

{ #category : 'simulation' }
Robot >> A [
	^ 0
]

{ #category : 'perform' }
Robot >> doInstructed: c [
	self class methodsInProtocol: #simulation
]

{ #category : 'instance initialization' }
Robot >> facing: newDir [
	direction := newDir.
]

{ #category : 'fields description' }
Robot >> synthesis [
	|position|
	position := Dictionary new
		add: ('x'->x);
		add: ('y'->y);
		yourself.
	^ Dictionary new
		add: ('direction'->direction);
		add: ('position'->position);
		yourself
]

{ #category : 'accessing' }
Robot >> x: newX [ 
	x := newX
]

{ #category : 'accessing' }
Robot >> y: newY [ 
	y := newY
]
