"
Anagram checker
"
Class {
	#name : 'Anagram',
	#superclass : 'Object',
	#category : 'Exercise@Anagram',
	#package : 'Exercise@Anagram'
}

{ #category : 'strings' }
Anagram >> findAnagramsCandidates: xs subject: s [ 
	|lowers clean|
	lowers := s onlyLetters asLowercase.
	clean := lowers sorted.
	^ xs select: [ :x |
		|lowerx|
		lowerx := x onlyLetters asLowercase.
		(lowers ~= lowerx) & (lowerx sort = clean)
	].
]
