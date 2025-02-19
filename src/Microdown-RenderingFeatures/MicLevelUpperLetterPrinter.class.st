Class {
	#name : 'MicLevelUpperLetterPrinter',
	#superclass : 'MicTitlePrinterSpecification',
	#category : 'Microdown-RenderingFeatures',
	#package : 'Microdown-RenderingFeatures'
}

{ #category : 'rendering-element' }
MicLevelUpperLetterPrinter >> renderElement: aNumber on: stream [
	| alphabet position |
	aNumber = 0
		ifTrue: [ stream nextPutAll: 'NaN'. ^ self ].
	alphabet := Character alphabet.
	position := aNumber \\ alphabet size.
	position = 0
		ifTrue: [ position := alphabet size ].
	stream nextPut: (alphabet at: position) asUppercase.
	((aNumber - 1) / alphabet size) asFloat floor timesRepeat: [ stream nextPut: $' ] 
]
