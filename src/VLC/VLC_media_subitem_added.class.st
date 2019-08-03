Class {
	#name : #'VLC_media_subitem_added',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_CHILD'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_subitem_added class >> fieldsDesc [
	"self rebuildFieldAccessors"
	"struct {
      libvlc_media_t * new_child
 
   }   media_subitem_added"
	^ #(
	 void * new_child
	)
]

{ #category : #'accessing structure variables' }
VLC_media_subitem_added >> new_child [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NEW_CHILD) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_subitem_added >> new_child: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NEW_CHILD put: anObject getHandle.
]
