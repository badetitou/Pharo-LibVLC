Class {
	#name : #'VLC_media_player_title_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_TITLE'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_title_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"

	^ #(
	int new_title;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_title_changed >> new_title [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_TITLE
]

{ #category : #'accessing structure variables' }
VLC_media_player_title_changed >> new_title: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_TITLE put: anObject
]
