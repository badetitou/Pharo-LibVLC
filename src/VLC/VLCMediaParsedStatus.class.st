Class {
	#name : #VLCMediaParsedStatus,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_media_parsed_status_done',
		'libvlc_media_parsed_status_failed',
		'libvlc_media_parsed_status_not_started',
		'libvlc_media_parsed_status_skipped',
		'libvlc_media_parsed_status_timeout'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCMediaParsedStatus class >> enumDecl [
	^ #(
libvlc_media_parsed_status_not_started 0
libvlc_media_parsed_status_skipped 1
libvlc_media_parsed_status_failed 2
libvlc_media_parsed_status_timeout 3
libvlc_media_parsed_status_done 4)
]

{ #category : #'enum declaration' }
VLCMediaParsedStatus class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_done [
	"This method was automatically generated"
	^ libvlc_media_parsed_status_done
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_done: anObject [
	libvlc_media_parsed_status_done := anObject
]

{ #category : #'accessing enum' }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_failed [
	"This method was automatically generated"
	^ libvlc_media_parsed_status_failed
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_failed: anObject [
	libvlc_media_parsed_status_failed := anObject
]

{ #category : #'accessing enum' }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_not_started [
	"This method was automatically generated"
	^ libvlc_media_parsed_status_not_started
]

{ #category : #'accessing enum' }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_skipped [
	"This method was automatically generated"
	^ libvlc_media_parsed_status_skipped
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_skipped: anObject [
	libvlc_media_parsed_status_skipped := anObject
]

{ #category : #'accessing enum' }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_timeout [
	"This method was automatically generated"
	^ libvlc_media_parsed_status_timeout
]

{ #category : #accessing }
VLCMediaParsedStatus class >> libvlc_media_parsed_status_timeout: anObject [
	libvlc_media_parsed_status_timeout := anObject
]
