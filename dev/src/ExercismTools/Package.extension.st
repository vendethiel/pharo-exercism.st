Extension { #name : 'Package' }

{ #category : '*ExercismTools' }
Package >> exPrintOutExtensionsFor: aClass on: aWriteStream [

	| selectors |
	(selectors := self extensionSelectorsForClass: aClass) ifEmpty: [  ^self ].
	
	aWriteStream 
		nextPutAll: '"-- #'; 
		nextPutAll: aClass name; 
		nextPutAll: ' (extension) --"'; 
		cr; cr.
	
	selectors do: [ :sel |  
		aClass exPrintOutMethod: sel on: aWriteStream ]
]

{ #category : '*ExercismTools' }
Package >> exerciseName [
	^ (self name allRegexMatches: '\w+') last
]

{ #category : '*ExercismTools' }
Package >> root [
	^self
]

{ #category : '*ExercismTools' }
Package >> snapshot [
	| pkgSnapshot extensions |
	pkgSnapshot := (MCPackage named: self name) snapshot.
	
	extensions := self extensionMethods
		collect: [ :extension | extension asRingDefinition asMCMethodDefinition  ].
		
	^ MCSnapshot fromDefinitions: pkgSnapshot definitions , extensions
]
