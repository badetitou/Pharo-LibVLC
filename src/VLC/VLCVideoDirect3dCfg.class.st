"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #VLCVideoDirect3dCfg,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BITDEPTH',
		'OFFSET_COLORSPACE',
		'OFFSET_DEVICE',
		'OFFSET_FULL_RANGE',
		'OFFSET_HEIGHT',
		'OFFSET_PRIMARIES',
		'OFFSET_TRANSFER',
		'OFFSET_WIDTH'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCVideoDirect3dCfg class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(int width;
	int height;
	int bitdepth;
	bool full_range;
	VLCVideoColorSpaceT colorspace;
	VLCVideoColorPrimariesT primaries;
	VLCVideoTransferFuncT transfer;
	void * device;)
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> bitdepth [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BITDEPTH
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> bitdepth: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BITDEPTH put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> colorspace [
	"This method was automatically generated"
	^VLCVideoColorSpaceT fromInteger: (handle unsignedLongAt: OFFSET_COLORSPACE)
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> colorspace: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COLORSPACE put: anObject value
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> device [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DEVICE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> device: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DEVICE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> full_range [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_FULL_RANGE
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> full_range: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_FULL_RANGE put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> primaries [
	"This method was automatically generated"
	^VLCVideoColorPrimariesT fromInteger: (handle unsignedLongAt: OFFSET_PRIMARIES)
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> primaries: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PRIMARIES put: anObject value
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> transfer [
	"This method was automatically generated"
	^VLCVideoTransferFuncT fromInteger: (handle unsignedLongAt: OFFSET_TRANSFER)
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> transfer: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TRANSFER put: anObject value
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dCfg >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
