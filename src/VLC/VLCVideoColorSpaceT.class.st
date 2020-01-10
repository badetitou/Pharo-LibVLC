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
	#name : #VLCVideoColorSpaceT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_video_colorspace_BT2020',
		'libvlc_video_colorspace_BT601',
		'libvlc_video_colorspace_BT709'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCVideoColorSpaceT class >> enumDecl [
	^ #(libvlc_video_colorspace_BT601 1
libvlc_video_colorspace_BT709 2
libvlc_video_colorspace_BT2020 3)
]

{ #category : #'enum declaration' }
VLCVideoColorSpaceT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT2020 [
	^ libvlc_video_colorspace_BT2020
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT2020: anObject [
	libvlc_video_colorspace_BT2020 := anObject
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT601 [
	^ libvlc_video_colorspace_BT601
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT601: anObject [
	libvlc_video_colorspace_BT601 := anObject
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT709 [
	^ libvlc_video_colorspace_BT709
]

{ #category : #accessing }
VLCVideoColorSpaceT class >> libvlc_video_colorspace_BT709: anObject [
	libvlc_video_colorspace_BT709 := anObject
]
