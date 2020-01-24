Class {
	#name : #VLCTrackT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_track_audio',
		'libvlc_track_text',
		'libvlc_track_unknown',
		'libvlc_track_video'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCTrackT class >> enumDecl [
	^ #(libvlc_track_unknown -1
libvlc_track_audio 0
libvlc_track_video 1
libvlc_track_text 2)
]

{ #category : #'enum declaration' }
VLCTrackT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCTrackT class >> libvlc_track_audio [
	"This method was automatically generated"
	^ libvlc_track_audio
]

{ #category : #'accessing enum' }
VLCTrackT class >> libvlc_track_text [
	"This method was automatically generated"
	^ libvlc_track_text
]

{ #category : #'accessing enum' }
VLCTrackT class >> libvlc_track_unknown [
	"This method was automatically generated"
	^ libvlc_track_unknown
]

{ #category : #'accessing enum' }
VLCTrackT class >> libvlc_track_video [
	"This method was automatically generated"
	^ libvlc_track_video
]
