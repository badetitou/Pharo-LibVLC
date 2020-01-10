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
	#name : #VLCAudioOutputDevice,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_PSZ_DESCRIPTION',
		'OFFSET_PSZ_DEVICE',
		'OFFSET_P_NEXT'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCAudioOutputDevice class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	VLCAudioOutputDevice * p_next;
	String psz_device;
	String psz_description;
	)
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> p_next [
	"This method was automatically generated"
	^VLCAudioOutputDevice fromHandle: (handle pointerAt: OFFSET_P_NEXT)
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> p_next: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_P_NEXT put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> psz_description [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_DESCRIPTION) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> psz_description: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_DESCRIPTION put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> psz_device [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_DEVICE) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCAudioOutputDevice >> psz_device: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_DEVICE put: anObject getHandle.
]
