Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testAddingDice [

	| d1 d2 hd |
	d1 := Die withFaces: 6.
	d2 := Die withFaces: 10.
	hd := (d1 + d2).
	self assert: hd diceNumber equals: 2
	
]

{ #category : #tests }
DieTest >> testAddingHandle [

	| d handle |
	d := Die withFaces: 6.
	handle := DieHandle handle1D6And1D10.
	self assert: (d + handle) diceNumber equals: 3
	
]

{ #category : #tests }
DieTest >> testRollIsOK [

	| d |
	d := Die new.
	10 timesRepeat: [ self assert: ( d roll between: 1 and: 6 ) ]
]
