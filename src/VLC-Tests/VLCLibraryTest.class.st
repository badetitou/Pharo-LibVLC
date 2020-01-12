Class {
	#name : #VLCLibraryTest,
	#superclass : #TestCase,
	#traits : 'TVLCTestsResources',
	#classTraits : 'TVLCTestsResources classTrait',
	#instVars : [
		'vlc'
	],
	#category : #'VLC-Tests'
}

{ #category : #running }
VLCLibraryTest >> setUp [
	super setUp.
	vlc := VLCLibrary uniqueInstance createVLCInstance
]

{ #category : #running }
VLCLibraryTest >> tearDown [
	VLCLibrary uniqueInstance release: vlc.
	super tearDown
]

{ #category : #running }
VLCLibraryTest >> testInstanceNewClass [
	self assert: vlc class equals: VLCInstance
]

{ #category : #running }
VLCLibraryTest >> testInstanceNewMediaFromPath [
	| media |
	"init"
	media := (vlc createMediaFromPath: (self resourcesFileReference / 'Open.mp3') fullNameWithIndicator ).
	"test"
	self assert: media class equals: VLCMedia.
	"tear down"
	VLCLibrary uniqueInstance mediaRelease: media
]
