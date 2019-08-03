Class {
	#name : #'VLC_media_thumbnail_generated',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_P_THUMBNAIL'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_thumbnail_generated class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	VLCPictureT * p_thumbnail;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_thumbnail_generated >> p_thumbnail [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_P_THUMBNAIL) type: ExternalType ulong asPointerType
]

{ #category : #'accessing structure variables' }
VLC_media_thumbnail_generated >> p_thumbnail: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_P_THUMBNAIL put: anObject value
]
