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
	#name : #VLCChapterDescription,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_I_DURATION',
		'OFFSET_I_TIME_OFFSET',
		'OFFSET_PSZ_NAME'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCChapterDescription class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(int64 i_time_offset;
	int64 i_duration;
	String psz_name;)
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> i_duration [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_I_DURATION
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> i_duration: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_I_DURATION put: anObject
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> i_time_offset [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_I_TIME_OFFSET
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> i_time_offset: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_I_TIME_OFFSET put: anObject
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> psz_name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PSZ_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
VLCChapterDescription >> psz_name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PSZ_NAME put: anObject getHandle.
]
