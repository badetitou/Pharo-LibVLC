Class {
	#name : #'VLC_renderer_discoverer_item_added',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ITEM'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_renderer_discoverer_item_added class >> fieldsDesc [
	"self rebuildFieldAccessors"
	self flag: #'TODO: Create the enum and fix the void here'.
	^ #(
	void * item;
	)
]

{ #category : #'accessing structure variables' }
VLC_renderer_discoverer_item_added >> item [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ITEM) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_renderer_discoverer_item_added >> item: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ITEM put: anObject getHandle.
]
