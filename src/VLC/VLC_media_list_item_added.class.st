Class {
	#name : #'VLC_media_list_item_added',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_INDEX',
		'OFFSET_ITEM'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_list_item_added class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	void * item;
   int index
	)
]

{ #category : #'accessing structure variables' }
VLC_media_list_item_added >> index [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_INDEX
]

{ #category : #'accessing structure variables' }
VLC_media_list_item_added >> index: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_INDEX put: anObject
]

{ #category : #'accessing structure variables' }
VLC_media_list_item_added >> item [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ITEM) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_list_item_added >> item: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ITEM put: anObject getHandle.
]
