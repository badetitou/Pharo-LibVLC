"
This class contains tests
"
Class {
	#name : #VLCLibraryMediaTest,
	#superclass : #TestCase,
	#traits : 'TVLCTestsResources',
	#classTraits : 'TVLCTestsResources classTrait',
	#instVars : [
		'path',
		'vlc',
		'media',
		'returnParse',
		'status'
	],
	#category : #'VLC-Tests'
}

{ #category : #tests }
VLCLibraryMediaTest >> setUp [
	super setUp.
	path := (self resourcesFileReference / 'Open.mp3') fullName.
	vlc := VLCLibrary uniqueInstance createVLCInstance.
	media := vlc createMediaFromPath: path.
	returnParse :=  media parseLocal.
	self assert: returnParse equals: 0.
	status := VLCMediaParsedStatus libvlc_media_parsed_status_not_started.
	[status = VLCMediaParsedStatus libvlc_media_parsed_status_not_started] whileTrue: [status := VLCLibrary uniqueInstance mediaGetParsedStatus: media].
	self assert: status equals: VLCMediaParsedStatus libvlc_media_parsed_status_done.
	
]

{ #category : #tests }
VLCLibraryMediaTest >> tearDown [
	media vlcRelease.
	vlc vlcRelease.
	super tearDown
]

{ #category : #tests }
VLCLibraryMediaTest >> testParseArtist [
	self assert: media artist equals: 'badetitou'
]

{ #category : #tests }
VLCLibraryMediaTest >> testParseTitle [
	self assert: media title equals: 'Open.mp3'
]

{ #category : #tests }
VLCLibraryMediaTest >> testRessourcesExist [
	self assert: (self resourcesFileReference / 'Open.mp3') asFileReference exists
]
