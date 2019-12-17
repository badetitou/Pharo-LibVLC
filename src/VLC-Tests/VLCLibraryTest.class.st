Class {
	#name : #VLCLibraryTest,
	#superclass : #TestCase,
	#category : #'VLC-Tests'
}

{ #category : #resources }
VLCLibraryTest >> resourcesFileReference [
	| repo |
	repo := (IceRepository registry
		detect: [ :each | each includesPackageNamed: 'VLC-Tests' ]
		ifNone: [ self
				error:
					'Please add a clone of this project to Iceberg to access to the resources' ])
		location.
	^ repo / 'res'
]

{ #category : #tests }
VLCLibraryTest >> testGetVersion [
	self assert: VLCLibrary uniqueInstance getVersion equals: '3.0.8 Vetinari'
]
