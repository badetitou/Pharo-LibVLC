Class {
	#name : #'VLC_media_player_time_changed',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NEW_TIME'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLC_media_player_time_changed class >> fieldsDesc [
	"self rebuildFieldAccessors"

	" struct {
      libvlc_time_t   new_time
 
   }   media_player_time_changed
	typedef int64_t libvlc_time_t
"

	^ #(
	int64 new_time;
	)
]

{ #category : #'accessing structure variables' }
VLC_media_player_time_changed >> new_time [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_NEW_TIME
]

{ #category : #'accessing structure variables' }
VLC_media_player_time_changed >> new_time: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_NEW_TIME put: anObject
]
