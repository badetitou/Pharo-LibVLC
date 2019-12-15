Class {
	#name : #VLCInstance,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #'as yet unclassified' }
VLCInstance >> createMediaListPlayer [
	^ VLCLibrary uniqueInstance createListPlayerForInstance: self
]
