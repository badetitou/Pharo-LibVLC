Trait {
	#name : #TVLCTestsResources,
	#category : #'VLC-Tests'
}

{ #category : #resources }
TVLCTestsResources >> resourcesFileReference [
	| repo |
	repo := (IceRepository registry
		detect: [ :each | each includesPackageNamed: 'VLC-Tests' ]
		ifNone: [ self
				error:
					'Please add a clone of this project to Iceberg to access to the resources' ])
		location.
	^ repo / 'res'
]
