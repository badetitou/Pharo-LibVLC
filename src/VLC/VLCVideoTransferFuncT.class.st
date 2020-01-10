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
	#name : #VLCVideoTransferFuncT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_video_transfer_func_BT470_BG',
		'libvlc_video_transfer_func_BT470_M',
		'libvlc_video_transfer_func_BT709',
		'libvlc_video_transfer_func_HLG',
		'libvlc_video_transfer_func_LINEAR',
		'libvlc_video_transfer_func_PQ',
		'libvlc_video_transfer_func_SMPTE_240',
		'libvlc_video_transfer_func_SRGB'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCVideoTransferFuncT class >> enumDecl [
	^ #(libvlc_video_transfer_func_LINEAR 1
libvlc_video_transfer_func_SRGB 2
libvlc_video_transfer_func_BT470_BG 3
libvlc_video_transfer_func_BT470_M 4
libvlc_video_transfer_func_BT709 5
libvlc_video_transfer_func_PQ 6
libvlc_video_transfer_func_SMPTE_240 7
libvlc_video_transfer_func_HLG 8)
]

{ #category : #'enum declaration' }
VLCVideoTransferFuncT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_BT470_BG [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_BT470_BG
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_BT470_M [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_BT470_M
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_BT709 [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_BT709
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_HLG [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_HLG
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_LINEAR [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_LINEAR
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_PQ [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_PQ
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_SMPTE_240 [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_SMPTE_240
]

{ #category : #'accessing enum' }
VLCVideoTransferFuncT class >> libvlc_video_transfer_func_SRGB [
	"This method was automatically generated"
	^ libvlc_video_transfer_func_SRGB
]
