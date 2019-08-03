Class {
	#name : #'VLC_media_meta_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_META_TYPE'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_meta_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	VLCMetaT meta_type
	)
]

{ #category : #'accessing structure variables' }
VLC_media_meta_changed >> meta_type [
	"This method was automatically generated"
	^VLCMetaT fromInteger: (handle unsignedLongAt: OFFSET_META_TYPE)
]

{ #category : #'accessing structure variables' }
VLC_media_meta_changed >> meta_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_META_TYPE put: anObject value
]
