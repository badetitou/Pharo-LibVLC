Class {
	#name : #'VLC_media_player_position_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_POSITION'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_position_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	 float new_position;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_position_changed >> new_position [
	"This method was automatically generated"
	^handle floatAt: OFFSET_NEW_POSITION
]

{ #category : #'accessing structure variables' }
VLC_media_player_position_changed >> new_position: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_NEW_POSITION put: anObject
]
