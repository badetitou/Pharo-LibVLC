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
	#name : #VLCVideoDirect3dDeviceSetup,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ADAPTER',
		'OFFSET_DEVICE_CONTEXT'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCVideoDirect3dDeviceSetup class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(void * device_context;
	int adapter;)
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dDeviceSetup >> adapter [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ADAPTER
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dDeviceSetup >> adapter: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ADAPTER put: anObject
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dDeviceSetup >> device_context [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DEVICE_CONTEXT) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCVideoDirect3dDeviceSetup >> device_context: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DEVICE_CONTEXT put: anObject getHandle.
]
