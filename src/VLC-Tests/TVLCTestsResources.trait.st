Trait {
	#name : #TVLCTestsResources,
	#category : #'VLC-Tests'
}

{ #category : #resources }
TVLCTestsResources >> resourcesFileReference [
	| repo filePath |
	filePath := '/home/travis/build/badetitou/Pharo-LibVLC'.
	repo := filePath asFileReference exists
		ifTrue: [ filePath asFileReference ]
		ifFalse: [ (IceRepository registry
				detect: [ :each | each includesPackageNamed: 'VLC-Tests' ]
				ifNone: [ self error: 'Please add a clone of this project to Iceberg to access to the resources' ]) location ].
	^ repo / 'res'
]
