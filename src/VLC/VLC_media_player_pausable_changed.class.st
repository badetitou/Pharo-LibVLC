Class {
	#name : #'VLC_media_player_pausable_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_PAUSABLE'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_pausable_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int new_pausable;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_pausable_changed >> new_pausable [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_PAUSABLE
]

{ #category : #'accessing structure variables' }
VLC_media_player_pausable_changed >> new_pausable: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_PAUSABLE put: anObject
]
