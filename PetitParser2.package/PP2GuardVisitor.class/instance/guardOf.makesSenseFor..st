support
guardOf: classification makesSenseFor: node
	| size |
	"if there are too little children, the overhead of a guard is too high"
	(node allNodes size < 4) ifTrue: [ ^ false ].

	size := ((1 to: 255) 	collect: [ :index | classification at: index ]
							  	thenSelect: [ :e | e ]) size.
								
	"if guard passes for so many characters, it is probably better not to guard"
	(size > 128) ifTrue: [ ^ false ].
	
	"It is already guarded"
	(self isWellGuarded: classification) ifTrue: [ ^ false ].
	
	^ true