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
	#name : #VLCVideoOutputCfg,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_COLORSPACE',
		'OFFSET_FULL_RANGE',
		'OFFSET_PRIMARIES',
		'OFFSET_SURFACE_FORMAT',
		'OFFSET_TRANSFER'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCVideoOutputCfg class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(int surface_format;
	bool full_range;
	VLCVideoColorSpaceT colorspace;
	VLCVideoColorPrimariesT primaries;
	VLCVideoTransferFuncT transfer;)
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> colorspace [
	"This method was automatically generated"
	^VLCVideoColorSpaceT fromInteger: (handle unsignedLongAt: OFFSET_COLORSPACE)
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> colorspace: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COLORSPACE put: anObject value
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> full_range [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_FULL_RANGE
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> full_range: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_FULL_RANGE put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> primaries [
	"This method was automatically generated"
	^VLCVideoColorPrimariesT fromInteger: (handle unsignedLongAt: OFFSET_PRIMARIES)
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> primaries: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PRIMARIES put: anObject value
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> surface_format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_SURFACE_FORMAT
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> surface_format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_SURFACE_FORMAT put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> transfer [
	"This method was automatically generated"
	^VLCVideoTransferFuncT fromInteger: (handle unsignedLongAt: OFFSET_TRANSFER)
]

{ #category : #'accessing structure variables' }
VLCVideoOutputCfg >> transfer: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TRANSFER put: anObject value
]
