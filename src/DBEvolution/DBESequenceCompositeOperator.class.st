Class {
	#name : #DBESequenceCompositeOperator,
	#superclass : #DBECompositeOperator,
	#instVars : [
		'sequenceOfOperators'
	],
	#category : #'DBEvolution-Core'
}

{ #category : #accessing }
DBESequenceCompositeOperator >> allOperators [
	^ self sequenceOfOperators flatCollect: [ :operator |
		operator allOperators ]
]

{ #category : #initialization }
DBESequenceCompositeOperator >> initialize [
	super initialize.
	self sequenceOfOperators: #()
]

{ #category : #accessing }
DBESequenceCompositeOperator >> sequenceOfOperators [
	^ sequenceOfOperators
]

{ #category : #accessing }
DBESequenceCompositeOperator >> sequenceOfOperators: anObject [
	sequenceOfOperators := anObject
]
