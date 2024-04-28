"
Grad school management
"
Class {
	#name : 'GradeSchool',
	#superclass : 'Object',
	#instVars : [
		'students'
	],
	#category : 'Exercise@GradeSchool',
	#package : 'Exercise@GradeSchool'
}

{ #category : 'adding' }
GradeSchool >> addStudent: student [
	students add: student
]

{ #category : 'adding' }
GradeSchool >> addStudents: students [
	students do: [ :student | self addStudent: student ]
]

{ #category : 'initialization' }
GradeSchool >> initialize [
	students := OrderedCollection new
]

{ #category : 'accessing' }
GradeSchool >> roster [
	^ students collect: [ :student | student first ]
]
