Class {
	#name : #'VLC_media_state_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_STATE'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_state_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	 int new_state;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_state_changed >> new_state [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_STATE
]

{ #category : #'accessing structure variables' }
VLC_media_state_changed >> new_state: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_STATE put: anObject
]
