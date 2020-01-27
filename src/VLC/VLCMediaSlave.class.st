Class {
	#name : #VLCMediaSlave,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_I_PRIORITY',
		'OFFSET_I_TYPE',
		'OFFSET_PSZ_URI'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCMediaSlave class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	String psz_uri;
	VLCMediaSlaveType i_type;
	int i_priority)
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> i_priority [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_PRIORITY
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> i_priority: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_PRIORITY put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> i_type [
	"This method was automatically generated"
	^VLCMediaSlaveType fromInteger: (handle unsignedLongAt: OFFSET_I_TYPE)
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> i_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_I_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> psz_uri [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_URI) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCMediaSlave >> psz_uri: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_URI put: anObject getHandle.
]
