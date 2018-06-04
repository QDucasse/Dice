Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testAddingDie [

	| h d |
	d := Die withFaces: 6.
	h := DieHandle handle1D6And1D10.
	self assert: (d + h) diceNumber equals: 3
]

{ #category : #tests }
DieHandleTest >> testAddingHandle [

	| h1 h2 h3 |
	h1 := DieHandle new.
	h1 addDie: (Die withFaces: 20).
	h2 := DieHandle handle1D6And1D10.
	h3 := (h1 + h2).
	self assert:  h3 diceNumber equals: 3.

	10000 timesRepeat: [ h3 roll between: 3 and: 36 ]
]
