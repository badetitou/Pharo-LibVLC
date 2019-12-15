Class {
	#name : #'VLC_media_player_es_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_I_ID',
		'OFFSET_I_TYPE'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_player_es_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
  	VLCTrackT i_type;
   int i_id
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_es_changed >> i_id [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_ID
]

{ #category : #'accessing structure variables' }
VLC_media_player_es_changed >> i_id: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_ID put: anObject
]

{ #category : #'accessing structure variables' }
VLC_media_player_es_changed >> i_type [
	"This method was automatically generated"
	^VLCTrackT fromInteger: (handle unsignedLongAt: OFFSET_I_TYPE)
]

{ #category : #'accessing structure variables' }
VLC_media_player_es_changed >> i_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_I_TYPE put: anObject value
]
