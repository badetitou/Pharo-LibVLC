Class {
	#name : #'VLC_media_parsed_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_STATUS'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_parsed_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int new_status;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_parsed_changed >> new_status [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_STATUS
]

{ #category : #'accessing structure variables' }
VLC_media_parsed_changed >> new_status: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_STATUS put: anObject
]
