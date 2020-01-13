Class {
	#name : #VLCMediaPlayer,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #'as yet unclassified' }
VLCMediaPlayer >> getMedia [
	VLCLibrary uniqueInstance mediaPlayerGetMedia: self
]

{ #category : #api }
VLCMediaPlayer >> pause [
	VLCLibrary uniqueInstance mediaPlayerPause: self
]

{ #category : #api }
VLCMediaPlayer >> play [
	VLCLibrary uniqueInstance mediaPlayerPlay: self
]
