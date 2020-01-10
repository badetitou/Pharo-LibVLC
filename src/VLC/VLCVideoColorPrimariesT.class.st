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
	#name : #VLCVideoColorPrimariesT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_video_primaries_BT2020',
		'libvlc_video_primaries_BT470_M',
		'libvlc_video_primaries_BT601_525',
		'libvlc_video_primaries_BT601_625',
		'libvlc_video_primaries_BT709',
		'libvlc_video_primaries_DCI_P3'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCVideoColorPrimariesT class >> enumDecl [
	^ #(libvlc_video_primaries_BT601_525 1	
libvlc_video_primaries_BT601_625 2
libvlc_video_primaries_BT709 3
libvlc_video_primaries_BT2020 4
libvlc_video_primaries_DCI_P3 5
libvlc_video_primaries_BT470_M 6)
]

{ #category : #'enum declaration' }
VLCVideoColorPrimariesT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_BT2020 [
	"This method was automatically generated"
	^ libvlc_video_primaries_BT2020
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_BT470_M [
	"This method was automatically generated"
	^ libvlc_video_primaries_BT470_M
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_BT601_525 [
	"This method was automatically generated"
	^ libvlc_video_primaries_BT601_525
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_BT601_625 [
	"This method was automatically generated"
	^ libvlc_video_primaries_BT601_625
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_BT709 [
	"This method was automatically generated"
	^ libvlc_video_primaries_BT709
]

{ #category : #'accessing enum' }
VLCVideoColorPrimariesT class >> libvlc_video_primaries_DCI_P3 [
	"This method was automatically generated"
	^ libvlc_video_primaries_DCI_P3
]
