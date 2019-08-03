Class {
	#name : #'VLC_media_player_audio_device',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DEVICE'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_audio_device class >> fieldsDesc [
	"self rebuildFieldAccessors"
	"should be const char * device"
	^ #(
	 char * device
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_audio_device >> device [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DEVICE) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_player_audio_device >> device: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DEVICE put: anObject getHandle.
]
