"
A VLCInstanceTest is a test class for testing the behavior of VLCInstance
"
Class {
	#name : #VLCInstanceTest,
	#superclass : #TestCase,
	#traits : 'TVLCTestsResources',
	#classTraits : 'TVLCTestsResources classTrait',
	#instVars : [
		'vlc'
	],
	#category : #'VLC-Tests-Structure'
}

{ #category : #test }
VLCInstanceTest >> setUp [
	super setUp.
	vlc := VLCLibrary uniqueInstance createVLCInstanceWithoutVideo
]

{ #category : #test }
VLCInstanceTest >> tearDown [
	vlc vlcRelease.
	super tearDown
]

{ #category : #test }
VLCInstanceTest >> testCreateMediaFromPath [
	self assert: (vlc createMediaFromPath: ((self resourcesFileReference / 'Open.mp3') fullName)) class equals: VLCMedia
]

{ #category : #test }
VLCInstanceTest >> testCreateMediaList [
	self assert: vlc createMediaList class equals: VLCMediaList
]

{ #category : #test }
VLCInstanceTest >> testCreateMediaListPlayer [
	self assert: vlc createMediaListPlayer class equals: VLCMediaListPlayer
]
