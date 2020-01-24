Class {
	#name : #VLCMediaParsedStatus,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_parsed_status_done',
		'libvlc_media_parsed_status_failed',
		'libvlc_media_parsed_status_skipped',
		'libvlc_media_parsed_status_timeout'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCMediaParsedStatus class >> enumDecl [
	^ #(libvlc_media_parsed_status_skipped 0
libvlc_media_parsed_status_failed 1
libvlc_media_parsed_status_timeout 2
libvlc_media_parsed_status_done 3)
]

{ #category : #'enum declaration' }
VLCMediaParsedStatus class >> initialize [
	self initializeEnumeration
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_done [
	^ libvlc_media_parsed_status_done
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_done: anObject [
	libvlc_media_parsed_status_done := anObject
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_failed [
	^ libvlc_media_parsed_status_failed
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_failed: anObject [
	libvlc_media_parsed_status_failed := anObject
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_skipped [
	^ libvlc_media_parsed_status_skipped
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_skipped: anObject [
	libvlc_media_parsed_status_skipped := anObject
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_timeout [
	^ libvlc_media_parsed_status_timeout
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_timeout: anObject [
	libvlc_media_parsed_status_timeout := anObject
]
