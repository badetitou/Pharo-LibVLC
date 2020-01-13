Class {
	#name : #VLCMediaType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_type_directory',
		'libvlc_media_type_disc',
		'libvlc_media_type_file',
		'libvlc_media_type_playlist',
		'libvlc_media_type_stream',
		'libvlc_media_type_unknown'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCMediaType class >> enumDecl [
	^ #(libvlc_media_type_unknown 1
libvlc_media_type_file 2
libvlc_media_type_directory 3
libvlc_media_type_disc 4
libvlc_media_type_stream 5
libvlc_media_type_playlist 6)
]

{ #category : #'class initialization' }
VLCMediaType class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_directory [
	"This method was automatically generated"
	^ libvlc_media_type_directory
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_disc [
	"This method was automatically generated"
	^ libvlc_media_type_disc
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_file [
	"This method was automatically generated"
	^ libvlc_media_type_file
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_playlist [
	"This method was automatically generated"
	^ libvlc_media_type_playlist
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_stream [
	"This method was automatically generated"
	^ libvlc_media_type_stream
]

{ #category : #'accessing enum' }
VLCMediaType class >> libvlc_media_type_unknown [
	"This method was automatically generated"
	^ libvlc_media_type_unknown
]
