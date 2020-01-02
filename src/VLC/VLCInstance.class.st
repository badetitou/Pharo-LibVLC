Class {
	#name : #VLCInstance,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #creation }
VLCInstance >> createMediaDiscovererNamed: aStringName [
	^ VLCLibrary uniqueInstance mediaDiscovererNew: self withName: aStringName
]

{ #category : #creation }
VLCInstance >> createMediaFromPath: aPath [
	"self createMediaFromPath: '/home/badetitou/Musique/Coda.mp3'"
	^ VLCLibrary uniqueInstance mediaNew: self path: aPath
]

{ #category : #creation }
VLCInstance >> createMediaList [
	^ VLCLibrary uniqueInstance mediaListNew: self
]

{ #category : #creation }
VLCInstance >> createMediaListPlayer [
	^ VLCLibrary uniqueInstance mediaListPlayerNew: self
]
