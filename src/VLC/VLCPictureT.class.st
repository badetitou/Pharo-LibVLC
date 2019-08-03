Class {
	#name : #VLCPictureT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_picture_Argb',
		'libvlc_picture_Jpg',
		'libvlc_picture_Png'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCPictureT class >> enumDecl [
	^ #(libvlc_picture_Argb 1 libvlc_picture_Png 2 libvlc_picture_Jpg 3)
]

{ #category : #'enum declaration' }
VLCPictureT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCPictureT class >> libvlc_picture_Argb [
	"This method was automatically generated"
	^ libvlc_picture_Argb
]

{ #category : #'accessing enum' }
VLCPictureT class >> libvlc_picture_Jpg [
	"This method was automatically generated"
	^ libvlc_picture_Jpg
]

{ #category : #'accessing enum' }
VLCPictureT class >> libvlc_picture_Png [
	"This method was automatically generated"
	^ libvlc_picture_Png
]
