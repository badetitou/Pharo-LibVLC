Class {
	#name : #VLCLibraryTest,
	#superclass : #TestCase,
	#traits : 'TVLCTestsResources',
	#classTraits : 'TVLCTestsResources classTrait',
	#category : #'VLC-Tests'
}

{ #category : #tests }
VLCLibraryTest >> testInstanceNewClass [
	| vlc |
	vlc := VLCLibrary uniqueInstance createVLCInstance.
	self assert: vlc class equals: VLCInstance
]

{ #category : #tests }
VLCLibraryTest >> testRessourcesExist [
	self assert: (self resourcesFileReference / 'Open.mp3') asFileReference exists
]
