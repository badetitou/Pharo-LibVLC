Class {
	#name : #'VLC_media_player_buffering',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_CACHE'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_buffering class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	float new_cache;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_buffering >> new_cache [
	"This method was automatically generated"
	^handle floatAt: OFFSET_NEW_CACHE
]

{ #category : #'accessing structure variables' }
VLC_media_player_buffering >> new_cache: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_NEW_CACHE put: anObject
]
