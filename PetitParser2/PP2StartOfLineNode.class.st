"
Matches start of a line, returns nil or PP2Failure in case of failure.

Example:
#startOfLine asPParser parse: ''
"
Class {
	#name : #PP2StartOfLineNode,
	#superclass : #PP2Node,
	#category : #'PetitParser2-Nodes'
}

{ #category : #visiting }
PP2StartOfLineNode >> accept: visitor [
	^ visitor visitStartOfLine: self
]

{ #category : #'analysis - first' }
PP2StartOfLineNode >> firstCharSet [
	"
	 Because the start of a line is not 'real' character in the input stream,
	 I don't know if the peek character in a stream is in my first set.
	"
	^ PP2UnknownCharSetPredicate instance
]

{ #category : #initialization }
PP2StartOfLineNode >> resetStrategy [
	strategy := PP2StartOfLine on: self
]
