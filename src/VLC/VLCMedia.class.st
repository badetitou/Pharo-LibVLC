Class {
	#name : #VLCMedia,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #'as yet unclassified' }
VLCMedia >> duration [
	^ VLCLibrary uniqueInstance mediaGetDuration: self
]

{ #category : #'as yet unclassified' }
VLCMedia >> mrl [
	^ VLCLibrary uniqueInstance mediaGetMRL: self
]
