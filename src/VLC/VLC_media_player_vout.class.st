Class {
	#name : #'VLC_media_player_vout',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_COUNT'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_vout class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int new_count
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_vout >> new_count [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_COUNT
]

{ #category : #'accessing structure variables' }
VLC_media_player_vout >> new_count: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_COUNT put: anObject
]
