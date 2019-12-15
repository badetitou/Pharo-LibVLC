Class {
	#name : #'VLC_media_player_snapshot_taken',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_PSZ_FILENAME'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_snapshot_taken class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	 char * psz_filename;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_snapshot_taken >> psz_filename [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_FILENAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_player_snapshot_taken >> psz_filename: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_FILENAME put: anObject getHandle.
]
