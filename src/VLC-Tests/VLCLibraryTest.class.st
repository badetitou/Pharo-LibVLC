Class {
	#name : #VLCLibraryTest,
	#superclass : #TestCase,
	#category : #'VLC-Tests'
}

{ #category : #'as yet unclassified' }
VLCLibraryTest >> resourcesFileReference [
	| repo |
	repo := (IceRepository registry
		detect: [ :each | each includesPackageNamed: 'VLCTests' ]
		ifNone: [ self
				error:
					'Please add a clone of this project to Iceberg to access to the resources' ])
		location.
	^ repo / 'res'
]
