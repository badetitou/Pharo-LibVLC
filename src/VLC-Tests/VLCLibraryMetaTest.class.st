Class {
	#name : #VLCLibraryMetaTest,
	#superclass : #TestCase,
	#category : #'VLC-Tests'
}

{ #category : #tests }
VLCLibraryMetaTest >> testGetVersion [
	self assert: (VLCLibrary uniqueInstance getVersion beginsWith: '3.0.8')
]
