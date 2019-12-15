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
	#name : #VLCMediaDiscovererDescription,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_I_CAT',
		'OFFSET_PSZ_LONGNAME',
		'OFFSET_PSZ_NAME'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCMediaDiscovererDescription class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(String psz_name;
	String psz_longname;
	VLCMediaDiscovererCategory i_cat;)
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> i_cat [
	"This method was automatically generated"
	^VLCMediaDiscovererCategory fromInteger: (handle unsignedLongAt: OFFSET_I_CAT)
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> i_cat: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_I_CAT put: anObject value
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> psz_longname [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_LONGNAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> psz_longname: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_LONGNAME put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> psz_name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCMediaDiscovererDescription >> psz_name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_NAME put: anObject getHandle.
]
