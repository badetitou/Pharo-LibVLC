Class {
	#name : #VLCMediaPlayer,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #api }
VLCMediaPlayer >> getMedia [
	^ VLCLibrary uniqueInstance mediaPlayerGetMedia: self
]

{ #category : #api }
VLCMediaPlayer >> pause [
	VLCLibrary uniqueInstance mediaPlayerPause: self
]

{ #category : #api }
VLCMediaPlayer >> play [
	VLCLibrary uniqueInstance mediaPlayerPlay: self
]

{ #category : #api }
VLCMediaPlayer >> stop [
	VLCLibrary uniqueInstance mediaPlayerStop: self
]
