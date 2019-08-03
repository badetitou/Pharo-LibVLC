Class {
	#name : #'VLC_media_player_media_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_MEDIA'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_media_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	 void * new_media
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_media_changed >> new_media [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NEW_MEDIA) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_player_media_changed >> new_media: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NEW_MEDIA put: anObject getHandle.
]
