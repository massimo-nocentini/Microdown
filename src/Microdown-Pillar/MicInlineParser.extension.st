Extension { #name : 'MicInlineParser' }

{ #category : '*Microdown-Pillar' }
MicInlineParser >> pillarFrom: aString [

	"return a collection of pillar nodes which can be used in setChildren: of the owner of aString"

	^ (self parse: aString) collect: [ :node | 
		  node accept: MicMicrodownObjectToPillarObjectConverter new ]
]
