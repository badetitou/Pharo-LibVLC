Class {
	#name : #'VLC_media_player_chapter_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_CHAPTER'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_chapter_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int new_chapter;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_chapter_changed >> new_chapter [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NEW_CHAPTER
]

{ #category : #'accessing structure variables' }
VLC_media_player_chapter_changed >> new_chapter: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NEW_CHAPTER put: anObject
]
