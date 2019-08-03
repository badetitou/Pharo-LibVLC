Class {
	#name : #'VLC_media_player_seekable_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_SEEKABLE'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_seekable_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	 int new_seekable;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_seekable_changed >> new_seekable [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_SEEKABLE
]

{ #category : #'accessing structure variables' }
VLC_media_player_seekable_changed >> new_seekable: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_SEEKABLE put: anObject
]
