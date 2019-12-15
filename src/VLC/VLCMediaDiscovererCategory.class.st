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
	#name : #VLCMediaDiscovererCategory,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_discoverer_devices',
		'libvlc_media_discoverer_lan',
		'libvlc_media_discoverer_localdirs',
		'libvlc_media_discoverer_podcasts'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCMediaDiscovererCategory class >> enumDecl [
	^ #(libvlc_media_discoverer_devices 1
libvlc_media_discoverer_lan 2
libvlc_media_discoverer_podcasts 3
libvlc_media_discoverer_localdirs 4)
]

{ #category : #'enum declaration' }
VLCMediaDiscovererCategory class >> initialize [
	self initializeEnumeration
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_devices [
	^ libvlc_media_discoverer_devices
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_devices: anObject [
	libvlc_media_discoverer_devices := anObject
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_lan [
	^ libvlc_media_discoverer_lan
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_lan: anObject [
	libvlc_media_discoverer_lan := anObject
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_localdirs [
	^ libvlc_media_discoverer_localdirs
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_localdirs: anObject [
	libvlc_media_discoverer_localdirs := anObject
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_podcasts [
	^ libvlc_media_discoverer_podcasts
]

{ #category : #accessing }
VLCMediaDiscovererCategory class >> libvlc_media_discoverer_podcasts: anObject [
	libvlc_media_discoverer_podcasts := anObject
]
