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

{ #category : #running }
VLCLibraryTest >> testInstanceNewMediaList [
	| mediaList |
	"init"
	mediaList := vlc createMediaList.
	"test"
	self assert: mediaList class equals: VLCMediaList.
	"tear down"
	VLCLibrary uniqueInstance mediaListPlayerRelease: mediaList
]

{ #category : #running }
VLCLibraryTest >> testInstanceNewMediaListPlayer [
	| mediaListPlayer |
	"init"
	mediaListPlayer := vlc createMediaListPlayer.
	"test"
	self assert: mediaListPlayer class equals: VLCMediaListPlayer.
	"tear down"
	VLCLibrary uniqueInstance mediaListPlayerRelease: mediaListPlayer
]
