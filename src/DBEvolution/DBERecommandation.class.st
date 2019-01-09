"
I model a recommandation of evolution for an entity.

A recommandation proposes multiple operators that a human will need to choose in order to make the DB evolve.
"
Class {
	#name : #DBERecommandation,
	#superclass : #Object,
	#instVars : [
		'entity',
		'operators'
	],
	#category : #'DBEvolution-Core'
}

{ #category : #'instance creation' }
DBERecommandation class >> entity: anEntity operators: aCollectionOfOperators [
	^ self new
		entity: anEntity;
		operators: aCollectionOfOperators;
		yourself
]

{ #category : #accessing }
DBERecommandation >> entity [
	^ entity
]

{ #category : #accessing }
DBERecommandation >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
DBERecommandation >> operators [
	^ operators
]

{ #category : #accessing }
DBERecommandation >> operators: anObject [
	operators := anObject
]