Class {
	#name : #'VLC_media_list_will_add_item',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_INDEX',
		'OFFSET_ITEM'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_list_will_add_item class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	void * item;
   int index
	)
]

{ #category : #'accessing structure variables' }
VLC_media_list_will_add_item >> index [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_INDEX
]

{ #category : #'accessing structure variables' }
VLC_media_list_will_add_item >> index: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_INDEX put: anObject
]

{ #category : #'accessing structure variables' }
VLC_media_list_will_add_item >> item [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ITEM) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_list_will_add_item >> item: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ITEM put: anObject getHandle.
]
