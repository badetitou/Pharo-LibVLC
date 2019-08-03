Class {
	#name : #'VLC_media_duration_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_DURATION'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_duration_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int64 new_duration;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_duration_changed >> new_duration [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_NEW_DURATION
]

{ #category : #'accessing structure variables' }
VLC_media_duration_changed >> new_duration: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_NEW_DURATION put: anObject
]
