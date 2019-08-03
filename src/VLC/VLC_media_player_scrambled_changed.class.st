Class {
	#name : #'VLC_media_player_scrambled_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_SCRAMBLED'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_scrambled_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	  int new_scrambled;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_scrambled_changed >> new_scrambled [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_SCRAMBLED
]

{ #category : #'accessing structure variables' }
VLC_media_player_scrambled_changed >> new_scrambled: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_SCRAMBLED put: anObject
]
