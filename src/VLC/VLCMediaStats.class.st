Class {
	#name : #VLCMediaStats,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_F_DEMUX_BITRATE',
		'OFFSET_F_INPUT_BITRATE',
		'OFFSET_I_DECODED_AUDIO',
		'OFFSET_I_DECODED_VIDEO',
		'OFFSET_I_DEMUX_CORRUPTED',
		'OFFSET_I_DEMUX_DISCONTINUITY',
		'OFFSET_I_DEMUX_READ_BYTES',
		'OFFSET_I_DISPLAYED_PICTURES',
		'OFFSET_I_LOST_ABUFFERS',
		'OFFSET_I_LOST_PICTURES',
		'OFFSET_I_PLAYED_ABUFFERS',
		'OFFSET_I_READ_BYTES'
	],
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCMediaStats class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	int i_read_bytes;
	float f_input_bitrate;
	int i_demux_read_bytes;
	float f_demux_bitrate;
	int i_demux_corrupted;
	int i_demux_discontinuity;
	int i_decoded_video;
	int i_decoded_audio;
	int i_displayed_pictures;
	int i_lost_pictures;
	int i_played_abuffers;
	int i_lost_abuffers;)
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> f_demux_bitrate [
	"This method was automatically generated"
	^handle floatAt: OFFSET_F_DEMUX_BITRATE
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> f_demux_bitrate: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_F_DEMUX_BITRATE put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> f_input_bitrate [
	"This method was automatically generated"
	^handle floatAt: OFFSET_F_INPUT_BITRATE
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> f_input_bitrate: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_F_INPUT_BITRATE put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_decoded_audio [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DECODED_AUDIO
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_decoded_audio: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DECODED_AUDIO put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_decoded_video [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DECODED_VIDEO
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_decoded_video: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DECODED_VIDEO put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_corrupted [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DEMUX_CORRUPTED
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_corrupted: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DEMUX_CORRUPTED put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_discontinuity [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DEMUX_DISCONTINUITY
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_discontinuity: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DEMUX_DISCONTINUITY put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_read_bytes [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DEMUX_READ_BYTES
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_demux_read_bytes: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DEMUX_READ_BYTES put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_displayed_pictures [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_DISPLAYED_PICTURES
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_displayed_pictures: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_DISPLAYED_PICTURES put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_lost_abuffers [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_LOST_ABUFFERS
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_lost_abuffers: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_LOST_ABUFFERS put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_lost_pictures [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_LOST_PICTURES
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_lost_pictures: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_LOST_PICTURES put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_played_abuffers [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_PLAYED_ABUFFERS
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_played_abuffers: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_PLAYED_ABUFFERS put: anObject
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_read_bytes [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I_READ_BYTES
]

{ #category : #'accessing structure variables' }
VLCMediaStats >> i_read_bytes: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I_READ_BYTES put: anObject
]
