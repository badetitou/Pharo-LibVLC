Class {
	#name : #'VLC_media_player_audio_volume',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_VOLUME'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_audio_volume class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	float volume;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_audio_volume >> volume [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VOLUME
]

{ #category : #'accessing structure variables' }
VLC_media_player_audio_volume >> volume: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VOLUME put: anObject
]
