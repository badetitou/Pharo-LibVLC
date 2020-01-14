"
A VLCInstanceTest is a test class for testing the behavior of VLCInstance
"
Class {
	#name : #VLCInstanceTest,
	#superclass : #TestCase,
	#category : #'VLC-Tests-Structure'
}

{ #category : #test }
VLCInstanceTest >> testCreateMediaList [
	| vlc |
	vlc := VLCLibrary uniqueInstance createVLCWithArguments:
		       { '--intf'. 'dummy' }.
	self assert: vlc createMediaList class equals: VLCMediaList
]
