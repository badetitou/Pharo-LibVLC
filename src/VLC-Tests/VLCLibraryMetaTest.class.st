Class {
	#name : #VLCLibraryMetaTest,
	#superclass : #TestCase,
	#category : #'VLC-Tests'
}

{ #category : #tests }
VLCLibraryMetaTest >> testGetVersion [
	self assert: VLCLibrary uniqueInstance getVersion equals: '3.0.8 Vetinari'
]
