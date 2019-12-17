Class {
	#name : #VLCMediaList,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #adding }
VLCMediaList >> addMedia: aVLCMedia [
	^ VLCLibrary uniqueInstance mediaList: self addMedia: aVLCMedia
]
