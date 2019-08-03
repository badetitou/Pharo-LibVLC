Class {
	#name : #VLCU,
	#superclass : #FFIExternalUnion,
	#category : #'VLC-Structure'
}

{ #category : #'field definition' }
VLCU class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^#(
		VLC_media_meta_changed vlcmmc;
		VLC_media_subitem_added vlcmsa;
		VLC_media_duration_changed vlcmdc;
		VLC_media_parsed_changed vlcmpc;
		VLC_media_freed vlcmf;
		VLC_media_state_changed vlcmsc;
		VLC_media_thumbnail_generated vlcmtg;
		VLC_media_subitemtree_added vlcmsua;
		VLC_media_player_buffering vlcmpb;
		VLC_media_player_chapter_changed vlcmpcc;
		VLC_media_player_position_changed vlcmppc;
		VLC_media_player_time_changed vlcmptc;
		VLC_media_player_title_changed vlcmptic;
		VLC_media_player_seekable_changed vlcmpsc;
		VLC_media_player_pausable_changed vlcmppac;
		VLC_media_player_scrambled_changed vlcmpscc;
		VLC_media_player_vout vlcmpv;
		VLC_media_list_item_added vlcmlia;
		VLC_media_list_will_add_item vlcmlwai;
		VLC_media_list_item_deleted vlcmlid;
		VLC_media_list_will_delete_item vlclwdi;
		VLC_media_list_player_next_item_set vlcmlpnis;
		VLC_media_player_snapshot_taken vlcmpst;
		VLC_media_player_length_changed vlcmplc;
		VLC_media_player_media_changed vlcmpmc;
		VLC_media_player_es_changed vlcmpec;
		VLC_media_player_audio_volume vlcmpav;
		VLC_media_player_audio_device vlcmpad;
		VLC_renderer_discoverer_item_added vlcrdia;
		VLC_renderer_discoverer_item_deleted vlcrdid;
 	)
]

{ #category : #'accessing structure variables' }
VLCU >> vlclwdi [
	"This method was automatically generated"
	^ VLC_media_list_will_delete_item fromHandle: (handle referenceStructAt: 1 length: VLC_media_list_will_delete_item byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlclwdi: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmdc [
	"This method was automatically generated"
	^ VLC_media_duration_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_duration_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmdc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmf [
	"This method was automatically generated"
	^ VLC_media_freed fromHandle: (handle referenceStructAt: 1 length: VLC_media_freed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmf: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlia [
	"This method was automatically generated"
	^ VLC_media_list_item_added fromHandle: (handle referenceStructAt: 1 length: VLC_media_list_item_added byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlia: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlid [
	"This method was automatically generated"
	^ VLC_media_list_item_deleted fromHandle: (handle referenceStructAt: 1 length: VLC_media_list_item_deleted byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlid: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlpnis [
	"This method was automatically generated"
	^ VLC_media_list_player_next_item_set fromHandle: (handle referenceStructAt: 1 length: VLC_media_list_player_next_item_set byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlpnis: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlwai [
	"This method was automatically generated"
	^ VLC_media_list_will_add_item fromHandle: (handle referenceStructAt: 1 length: VLC_media_list_will_add_item byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmlwai: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmmc [
	"This method was automatically generated"
	^ VLC_media_meta_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_meta_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmmc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpad [
	"This method was automatically generated"
	^ VLC_media_player_audio_device fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_audio_device byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpad: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpav [
	"This method was automatically generated"
	^ VLC_media_player_audio_volume fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_audio_volume byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpav: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpb [
	"This method was automatically generated"
	^ VLC_media_player_buffering fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_buffering byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpb: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpc [
	"This method was automatically generated"
	^ VLC_media_parsed_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_parsed_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpcc [
	"This method was automatically generated"
	^ VLC_media_player_chapter_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_chapter_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpcc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpec [
	"This method was automatically generated"
	^ VLC_media_player_es_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_es_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpec: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmplc [
	"This method was automatically generated"
	^ VLC_media_player_length_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_length_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmplc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpmc [
	"This method was automatically generated"
	^ VLC_media_player_media_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_media_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpmc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmppac [
	"This method was automatically generated"
	^ VLC_media_player_pausable_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_pausable_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmppac: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmppc [
	"This method was automatically generated"
	^ VLC_media_player_position_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_position_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmppc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpsc [
	"This method was automatically generated"
	^ VLC_media_player_seekable_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_seekable_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpsc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpscc [
	"This method was automatically generated"
	^ VLC_media_player_scrambled_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_scrambled_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpscc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpst [
	"This method was automatically generated"
	^ VLC_media_player_snapshot_taken fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_snapshot_taken byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpst: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmptc [
	"This method was automatically generated"
	^ VLC_media_player_time_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_time_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmptc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmptic [
	"This method was automatically generated"
	^ VLC_media_player_title_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_title_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmptic: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpv [
	"This method was automatically generated"
	^ VLC_media_player_vout fromHandle: (handle referenceStructAt: 1 length: VLC_media_player_vout byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmpv: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsa [
	"This method was automatically generated"
	^ VLC_media_subitem_added fromHandle: (handle referenceStructAt: 1 length: VLC_media_subitem_added byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsa: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsc [
	"This method was automatically generated"
	^ VLC_media_state_changed fromHandle: (handle referenceStructAt: 1 length: VLC_media_state_changed byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsua [
	"This method was automatically generated"
	^ VLC_media_subitemtree_added fromHandle: (handle referenceStructAt: 1 length: VLC_media_subitemtree_added byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmsua: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmtg [
	"This method was automatically generated"
	^ VLC_media_thumbnail_generated fromHandle: (handle referenceStructAt: 1 length: VLC_media_thumbnail_generated byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcmtg: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcrdia [
	"This method was automatically generated"
	^ VLC_renderer_discoverer_item_added fromHandle: (handle referenceStructAt: 1 length: VLC_renderer_discoverer_item_added byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcrdia: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
VLCU >> vlcrdid [
	"This method was automatically generated"
	^ VLC_renderer_discoverer_item_deleted fromHandle: (handle referenceStructAt: 1 length: VLC_renderer_discoverer_item_deleted byteSize)
]

{ #category : #'accessing structure variables' }
VLCU >> vlcrdid: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]
