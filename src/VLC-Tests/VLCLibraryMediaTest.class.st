Class {
	#name : #VLCLibraryMediaTest,
	#superclass : #TestCase,
	#traits : 'TVLCTestsResources',
	#classTraits : 'TVLCTestsResources classTrait',
	#instVars : [
		'vlc',
		'media'
	],
	#category : #'VLC-Tests'
}

{ #category : #running }
VLCLibraryMediaTest >> setUp [
	super setUp.
	vlc := VLCLibrary uniqueInstance createVLCInstance.
	media := (vlc createMediaFromPath: (self resourcesFileReference / 'Open.mp3') fullNameWithIndicator ).
]

{ #category : #running }
VLCLibraryMediaTest >> tearDown [
	VLCLibrary uniqueInstance mediaRelease: media.
	VLCLibrary uniqueInstance release: vlc.
	super tearDown
]

{ #category : #running }
VLCLibraryMediaTest >> testGetDurationType [
	self assert: media duration class equals: SmallInteger
]

{ #category : #running }
VLCLibraryMediaTest >> testGetMRL [
	self assert: (media mrl endsWith: 'Open.mp3')
]
