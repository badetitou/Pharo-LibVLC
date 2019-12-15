Class {
	#name : #'VLC_media_freed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_MD'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_freed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	" struct {
      libvlc_media_t *   md
 
   }   media_freed"
	^ #(
	void * md;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_freed >> md [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MD) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_freed >> md: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MD put: anObject getHandle.
]
