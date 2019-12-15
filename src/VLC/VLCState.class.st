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
	#name : #VLCState,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_Buffering',
		'libvlc_Ended',
		'libvlc_Error',
		'libvlc_NothingSpecial',
		'libvlc_Opening',
		'libvlc_Paused',
		'libvlc_Playing',
		'libvlc_Stopped'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'class initialization' }
VLCState class >> enumDecl [
	^ #(libvlc_NothingSpecial 0 	
libvlc_Opening 	1
libvlc_Buffering 2	
libvlc_Playing 	3
libvlc_Paused 4
libvlc_Stopped 5	
libvlc_Ended 6
libvlc_Error 7)
]

{ #category : #'class initialization' }
VLCState class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #accessing }
VLCState class >> libvlc_Buffering [
	^ libvlc_Buffering
]

{ #category : #accessing }
VLCState class >> libvlc_Ended [
	^ libvlc_Ended
]

{ #category : #accessing }
VLCState class >> libvlc_Error [
	^ libvlc_Error
]

{ #category : #accessing }
VLCState class >> libvlc_NothingSpecial [
	^ libvlc_NothingSpecial
]

{ #category : #accessing }
VLCState class >> libvlc_Opening [
	^ libvlc_Opening
]

{ #category : #accessing }
VLCState class >> libvlc_Paused [
	^ libvlc_Paused
]

{ #category : #accessing }
VLCState class >> libvlc_Playing [
	^ libvlc_Playing
]

{ #category : #accessing }
VLCState class >> libvlc_Stopped [
	^ libvlc_Stopped
]
