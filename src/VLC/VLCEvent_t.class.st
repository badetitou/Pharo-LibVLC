Class {
	#name : #'VLCEvent_t',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_P_OBJ',
		'OFFSET_TYPE',
		'OFFSET_U'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLCEvent_t class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int type;
	void * p_obj;
	VLCU u;
	)
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> p_obj [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_P_OBJ) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> p_obj: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_P_OBJ put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> type [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TYPE
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> type: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TYPE put: anObject
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> u [
	"This method was automatically generated"
	^ VLCU fromHandle: (handle referenceStructAt: OFFSET_U length: VLCU byteSize)
]

{ #category : #'accessing structure variables' }
VLCEvent_t >> u: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_U put: anObject getHandle length: VLCU byteSize
]
