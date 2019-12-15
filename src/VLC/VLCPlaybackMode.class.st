Class {
	#name : #VLCPlaybackMode,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_playback_mode_default',
		'libvlc_playback_mode_loop',
		'libvlc_playback_mode_repeat'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'class initialization' }
VLCPlaybackMode class >> enumDecl [
	^ #(libvlc_playback_mode_default 1
libvlc_playback_mode_loop 2
libvlc_playback_mode_repeat 3)
]

{ #category : #'class initialization' }
VLCPlaybackMode class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #accessing }
VLCPlaybackMode class >> libvlc_playback_mode_default [
	^ libvlc_playback_mode_default
]

{ #category : #accessing }
VLCPlaybackMode class >> libvlc_playback_mode_loop [
	^ libvlc_playback_mode_loop
]

{ #category : #accessing }
VLCPlaybackMode class >> libvlc_playback_mode_repeat [
	^ libvlc_playback_mode_repeat
]
