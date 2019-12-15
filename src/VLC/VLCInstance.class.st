Class {
	#name : #VLCInstance,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #creation }
VLCInstance >> createMediaListPlayer [
	^ VLCLibrary uniqueInstance mediaListPlayerNew: self
]
