Class {
	#name : #BaselineOfPetitParser2Experimental,
	#superclass : #BaselineOf,
	#category : 'BaselineOfPetitParser2Experimental'
}

{ #category : #baselines }
BaselineOfPetitParser2Experimental >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'PetitParser2Experimental'.
		spec baseline: 'PetitParser2Gui' with: [ 
			spec repository: 'github://kursjan/petitparser2:master' ].
		spec baseline: 'PetitParser2RewriteEngine' with: [ 
			spec repository: 'github://kursjan/petitparser2:master' ].

		spec
			package: 'PetitParser2-Experiments' with: [ 
				spec requires: #( 'PetitParser2Gui' 'PetitParser2RewriteEngine' ) ].
	]
]
