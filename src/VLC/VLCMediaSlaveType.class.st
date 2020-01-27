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
	#name : #VLCMediaSlaveType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_slave_type_audio',
		'libvlc_media_slave_type_subtitle'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'class initialization' }
VLCMediaSlaveType class >> enumDecl [
	^ #(libvlc_media_slave_type_subtitle 0
	libvlc_media_slave_type_audio 1)
]

{ #category : #'class initialization' }
VLCMediaSlaveType class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCMediaSlaveType class >> libvlc_media_slave_type_audio [
	"This method was automatically generated"
	^ libvlc_media_slave_type_audio
]

{ #category : #'accessing enum' }
VLCMediaSlaveType class >> libvlc_media_slave_type_subtitle [
	"This method was automatically generated"
	^ libvlc_media_slave_type_subtitle
]
