Class {
	#name : #'VLC_media_player_length_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_LENGTH'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_length_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int64 new_length;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_length_changed >> new_length [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_NEW_LENGTH
]

{ #category : #'accessing structure variables' }
VLC_media_player_length_changed >> new_length: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_NEW_LENGTH put: anObject
]
