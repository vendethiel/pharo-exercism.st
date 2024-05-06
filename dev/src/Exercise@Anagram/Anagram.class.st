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
	|sclean sbag|
	sclean := s onlyLetters asLowercase.
	sbag := sclean asBag.
	^ xs select: [ :x |
		|xclean|
		xclean := x onlyLetters asLowercase.
		(xclean ~= sclean) & (xclean asBag = sbag)
	].
]
