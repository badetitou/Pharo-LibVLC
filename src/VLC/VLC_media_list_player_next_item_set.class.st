Class {
	#name : #'VLC_media_list_player_next_item_set',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ITEM'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_list_player_next_item_set class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	void * item
	)
]

{ #category : #'accessing structure variables' }
VLC_media_list_player_next_item_set >> item [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ITEM) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_list_player_next_item_set >> item: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ITEM put: anObject getHandle.
]
