Class {
	#name : #VLCMediaParseFlag,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_do_interact',
		'libvlc_media_fetch_local',
		'libvlc_media_fetch_network',
		'libvlc_media_parse_local',
		'libvlc_media_parse_network'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'class initialization' }
VLCMediaParseFlag class >> enumDecl [
	^ #(libvlc_media_parse_local 1
libvlc_media_parse_network 2
libvlc_media_fetch_local 3
libvlc_media_fetch_network 4
libvlc_media_do_interact 5)
]

{ #category : #'class initialization' }
VLCMediaParseFlag class >> initialize [
	self initializeEnumeration
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_do_interact [
	^ libvlc_media_do_interact
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_do_interact: anObject [
	libvlc_media_do_interact := anObject
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_fetch_local [
	^ libvlc_media_fetch_local
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_fetch_local: anObject [
	libvlc_media_fetch_local := anObject
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_fetch_network [
	^ libvlc_media_fetch_network
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_fetch_network: anObject [
	libvlc_media_fetch_network := anObject
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_parse_local [
	^ libvlc_media_parse_local
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_parse_local: anObject [
	libvlc_media_parse_local := anObject
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_parse_network [
	^ libvlc_media_parse_network
]

{ #category : #accessing }
VLCMediaParseFlag class >> libvlc_media_parse_network: anObject [
	libvlc_media_parse_network := anObject
]
