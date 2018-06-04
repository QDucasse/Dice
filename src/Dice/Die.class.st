Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [

	^ self new faces: aNumber; yourself
]

{ #category : #accessing }
Die >> + aDieOrHandle [

	| handle |
	handle := DieHandle new.
	handle addDie: self.
	^ aDieOrHandle sumWithHandle: handle
]

{ #category : #accessing }
Die >> faces: aNumber [

	faces := aNumber
	
]

{ #category : #accessing }
Die >> initialize [
	
	super initialize.
	faces := 6.
]

{ #category : #accessing }
Die >> roll [

	^ faces atRandom
]

{ #category : #accessing }
Die >> sumWithHandle: aHandle [

	| handle |
	handle := DieHandle new.
	handle addDie: self.
	^ handle sumWithHandle: aHandle 
]
