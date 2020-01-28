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
	#name : #VLCTrackDescription,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_I_ID',
		'OFFSET_PSZ_NAME',
		'OFFSET_P_NEXT'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCTrackDescription class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(int i_id;
	String psz_name;
	VLCTrackDescription * p_next;)
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> i_id [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_ID
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> i_id: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_ID put: anObject
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> p_next [
	"This method was automatically generated"
	^VLCTrackDescription fromHandle: (handle pointerAt: OFFSET_P_NEXT)
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> p_next: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_P_NEXT put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> printOn: aStream [
	handle isNull
		ifFalse: [ aStream
				<< '(';
				print: self i_id;
				<< ')';
				print: self psz_name readString ]
		ifTrue: [ aStream << 'nil' ]
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> psz_name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCTrackDescription >> psz_name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_NAME put: anObject getHandle.
]

{ #category : #'inspector extensions' }
VLCTrackDescription >> vlcExtensionTrackDescription: composite [
	<gtInspectorPresentationOrder: 0>
	composite list
		title: 'Track Description';
		display: [ {self i_id . self psz_name readString . (self p_next isNull ifTrue: [ nil ] ifFalse: [ self p_next ])} ]
]
