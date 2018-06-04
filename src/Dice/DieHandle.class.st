Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieHandle class >> handle1D6And1D10 [

	| handle |
	handle := self new.
	handle addDie: (1 D6).
	handle addDie: (1 D10).
	^handle
]

{ #category : #initialization }
DieHandle >> + aDieOrHandle [

	^ aDieOrHandle sumWithHandle: self
]

{ #category : #initialization }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [

	^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [
	
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> roll [

	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]

{ #category : #initialization }
DieHandle >> sumWithHandle: aHandle [

	| handle |
	handle := self class new.
	aHandle dice do: [ :each | handle addDie: each ].
	dice do: [ :each | handle addDie: each ].
	^ handle
	
]
