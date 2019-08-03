"
'the list of event type is available here: https://www.videolan.org/developers/vlc/doc/doxygen/html/group__libvlc__event.html#ga7af8cc980d8f13c9c10ed632990ce6ef'
"
Class {
	#name : #VLCEventTypeEnumeration,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_MediaDurationChanged',
		'libvlc_MediaFreed',
		'libvlc_MediaListEndReached',
		'libvlc_MediaListItemAdded',
		'libvlc_MediaListItemDeleted',
		'libvlc_MediaListPlayerNextItemSet',
		'libvlc_MediaListPlayerPlayed',
		'libvlc_MediaListPlayerStopped',
		'libvlc_MediaListViewItemAdded',
		'libvlc_MediaListViewItemDeleted',
		'libvlc_MediaListViewWillAddItem',
		'libvlc_MediaListViewWillDeleteItem',
		'libvlc_MediaListWillAddItem',
		'libvlc_MediaListWillDeleteItem',
		'libvlc_MediaMetaChanged',
		'libvlc_MediaParsedChanged',
		'libvlc_MediaPlayerAudioDevice',
		'libvlc_MediaPlayerAudioVolume',
		'libvlc_MediaPlayerBackward',
		'libvlc_MediaPlayerBuffering',
		'libvlc_MediaPlayerChapterChanged',
		'libvlc_MediaPlayerCorked',
		'libvlc_MediaPlayerESAdded',
		'libvlc_MediaPlayerESDeleted',
		'libvlc_MediaPlayerESSelected',
		'libvlc_MediaPlayerEncounteredError',
		'libvlc_MediaPlayerEndReached',
		'libvlc_MediaPlayerForward',
		'libvlc_MediaPlayerLengthChanged',
		'libvlc_MediaPlayerMediaChanged',
		'libvlc_MediaPlayerMuted',
		'libvlc_MediaPlayerNothingSpecial',
		'libvlc_MediaPlayerOpening',
		'libvlc_MediaPlayerPausableChanged',
		'libvlc_MediaPlayerPaused',
		'libvlc_MediaPlayerPlaying',
		'libvlc_MediaPlayerPositionChanged',
		'libvlc_MediaPlayerScrambledChanged',
		'libvlc_MediaPlayerSeekableChanged',
		'libvlc_MediaPlayerSnapshotTaken',
		'libvlc_MediaPlayerStopped',
		'libvlc_MediaPlayerTimeChanged',
		'libvlc_MediaPlayerTitleChanged',
		'libvlc_MediaPlayerUncorked',
		'libvlc_MediaPlayerUnmuted',
		'libvlc_MediaPlayerVout',
		'libvlc_MediaStateChanged',
		'libvlc_MediaSubItemAdded',
		'libvlc_MediaSubItemTreeAdded',
		'libvlc_MediaThumbnailGenerated',
		'libvlc_RendererDiscovererItemAdded',
		'libvlc_RendererDiscovererItemDeleted'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCEventTypeEnumeration class >> enumDecl [
	^ { (#libvlc_MediaMetaChanged -> 0).
	(#libvlc_MediaSubItemAdded -> 1).
	(#libvlc_MediaDurationChanged -> 2). 
	(#libvlc_MediaParsedChanged -> 3).
  	(#libvlc_MediaFreed -> 4).
	(#libvlc_MediaStateChanged -> 5).
	(#libvlc_MediaSubItemTreeAdded -> 6). 
	(#libvlc_MediaThumbnailGenerated -> 7). 
   (#libvlc_MediaPlayerMediaChanged -> 256).
	(#libvlc_MediaPlayerNothingSpecial -> 257).
	(#libvlc_MediaPlayerOpening -> 258).
	(#libvlc_MediaPlayerBuffering -> 259). 
  	(#libvlc_MediaPlayerPlaying -> 260). 
	(#libvlc_MediaPlayerPaused -> 261).
	(#libvlc_MediaPlayerStopped -> 262). 
	(#libvlc_MediaPlayerForward -> 263). 
	(#libvlc_MediaPlayerBackward -> 264). 
	(#libvlc_MediaPlayerEndReached -> 265). 
	(#libvlc_MediaPlayerEncounteredError -> 266). 
	(#libvlc_MediaPlayerTimeChanged -> 267).
	(#libvlc_MediaPlayerPositionChanged -> 268). 
	(#libvlc_MediaPlayerSeekableChanged -> 269). 
	(#libvlc_MediaPlayerPausableChanged -> 270). 
	(#libvlc_MediaPlayerTitleChanged -> 271).
	(#libvlc_MediaPlayerSnapshotTaken -> 272). 
	(#libvlc_MediaPlayerLengthChanged -> 273). 
	(#libvlc_MediaPlayerVout -> 274).
	(#libvlc_MediaPlayerScrambledChanged -> 275). 
	(#libvlc_MediaPlayerESAdded -> 276).
	(#libvlc_MediaPlayerESDeleted -> 277).
	(#libvlc_MediaPlayerESSelected -> 278).
	(#libvlc_MediaPlayerCorked -> 279).
	(#libvlc_MediaPlayerUncorked -> 280). 
	(#libvlc_MediaPlayerMuted -> 281).
	(#libvlc_MediaPlayerUnmuted -> 282). 
	(#libvlc_MediaPlayerAudioVolume -> 283). 
	(#libvlc_MediaPlayerAudioDevice -> 284). 
	(#libvlc_MediaPlayerChapterChanged -> 285). 
	(#libvlc_MediaListItemAdded -> 512). 
	(#libvlc_MediaListWillAddItem -> 513).
	(#libvlc_MediaListItemDeleted -> 514). 
	(#libvlc_MediaListWillDeleteItem -> 515). 
	(#libvlc_MediaListEndReached -> 516).
	(#libvlc_MediaListViewItemAdded -> 768).
  	(#libvlc_MediaListViewWillAddItem -> 769).
	(#libvlc_MediaListViewItemDeleted -> 770).
	(#libvlc_MediaListViewWillDeleteItem -> 771). 
	(#libvlc_MediaListPlayerPlayed -> 1024). 
	(#libvlc_MediaListPlayerNextItemSet -> 1025).
	(#libvlc_MediaListPlayerStopped -> 1026).
	(#libvlc_RendererDiscovererItemAdded -> 1282). 
	(#libvlc_RendererDiscovererItemDeleted -> 1283) } asDictionary
]

{ #category : #'enum declaration' }
VLCEventTypeEnumeration class >> initialize [
	self initializeEnumeration
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaDurationChanged [
	^ libvlc_MediaDurationChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaDurationChanged: anObject [
	libvlc_MediaDurationChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaFreed [
	^ libvlc_MediaFreed
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaFreed: anObject [
	libvlc_MediaFreed := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListEndReached [
	^ libvlc_MediaListEndReached
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListEndReached: anObject [
	libvlc_MediaListEndReached := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListItemAdded [
	^ libvlc_MediaListItemAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListItemAdded: anObject [
	libvlc_MediaListItemAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListItemDeleted [
	^ libvlc_MediaListItemDeleted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListItemDeleted: anObject [
	libvlc_MediaListItemDeleted := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerNextItemSet [
	^ libvlc_MediaListPlayerNextItemSet
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerNextItemSet: anObject [
	libvlc_MediaListPlayerNextItemSet := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerPlayed [
	^ libvlc_MediaListPlayerPlayed
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerPlayed: anObject [
	libvlc_MediaListPlayerPlayed := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerStopped [
	^ libvlc_MediaListPlayerStopped
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListPlayerStopped: anObject [
	libvlc_MediaListPlayerStopped := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewItemAdded [
	^ libvlc_MediaListViewItemAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewItemAdded: anObject [
	libvlc_MediaListViewItemAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewItemDeleted [
	^ libvlc_MediaListViewItemDeleted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewItemDeleted: anObject [
	libvlc_MediaListViewItemDeleted := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewWillAddItem [
	^ libvlc_MediaListViewWillAddItem
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewWillAddItem: anObject [
	libvlc_MediaListViewWillAddItem := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewWillDeleteItem [
	^ libvlc_MediaListViewWillDeleteItem
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListViewWillDeleteItem: anObject [
	libvlc_MediaListViewWillDeleteItem := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListWillAddItem [
	^ libvlc_MediaListWillAddItem
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListWillAddItem: anObject [
	libvlc_MediaListWillAddItem := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListWillDeleteItem [
	^ libvlc_MediaListWillDeleteItem
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaListWillDeleteItem: anObject [
	libvlc_MediaListWillDeleteItem := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaMetaChanged [
	^ libvlc_MediaMetaChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaMetaChanged: anObject [
	libvlc_MediaMetaChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaParsedChanged [
	^ libvlc_MediaParsedChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaParsedChanged: anObject [
	libvlc_MediaParsedChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerAudioDevice [
	^ libvlc_MediaPlayerAudioDevice
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerAudioDevice: anObject [
	libvlc_MediaPlayerAudioDevice := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerAudioVolume [
	^ libvlc_MediaPlayerAudioVolume
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerAudioVolume: anObject [
	libvlc_MediaPlayerAudioVolume := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerBackward [
	^ libvlc_MediaPlayerBackward
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerBackward: anObject [
	libvlc_MediaPlayerBackward := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerBuffering [
	^ libvlc_MediaPlayerBuffering
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerBuffering: anObject [
	libvlc_MediaPlayerBuffering := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerChapterChanged [
	^ libvlc_MediaPlayerChapterChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerChapterChanged: anObject [
	libvlc_MediaPlayerChapterChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerCorked [
	^ libvlc_MediaPlayerCorked
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerCorked: anObject [
	libvlc_MediaPlayerCorked := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESAdded [
	^ libvlc_MediaPlayerESAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESAdded: anObject [
	libvlc_MediaPlayerESAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESDeleted [
	^ libvlc_MediaPlayerESDeleted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESDeleted: anObject [
	libvlc_MediaPlayerESDeleted := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESSelected [
	^ libvlc_MediaPlayerESSelected
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerESSelected: anObject [
	libvlc_MediaPlayerESSelected := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerEncounteredError [
	^ libvlc_MediaPlayerEncounteredError
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerEncounteredError: anObject [
	libvlc_MediaPlayerEncounteredError := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerEndReached [
	^ libvlc_MediaPlayerEndReached
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerEndReached: anObject [
	libvlc_MediaPlayerEndReached := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerForward [
	^ libvlc_MediaPlayerForward
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerForward: anObject [
	libvlc_MediaPlayerForward := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerLengthChanged [
	^ libvlc_MediaPlayerLengthChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerLengthChanged: anObject [
	libvlc_MediaPlayerLengthChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerMediaChanged [
	^ libvlc_MediaPlayerMediaChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerMediaChanged: anObject [
	libvlc_MediaPlayerMediaChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerMuted [
	^ libvlc_MediaPlayerMuted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerMuted: anObject [
	libvlc_MediaPlayerMuted := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerNothingSpecial [
	^ libvlc_MediaPlayerNothingSpecial
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerNothingSpecial: anObject [
	libvlc_MediaPlayerNothingSpecial := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerOpening [
	^ libvlc_MediaPlayerOpening
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerOpening: anObject [
	libvlc_MediaPlayerOpening := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPausableChanged [
	^ libvlc_MediaPlayerPausableChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPausableChanged: anObject [
	libvlc_MediaPlayerPausableChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPaused [
	^ libvlc_MediaPlayerPaused
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPaused: anObject [
	libvlc_MediaPlayerPaused := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPlaying [
	^ libvlc_MediaPlayerPlaying
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPlaying: anObject [
	libvlc_MediaPlayerPlaying := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPositionChanged [
	^ libvlc_MediaPlayerPositionChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerPositionChanged: anObject [
	libvlc_MediaPlayerPositionChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerScrambledChanged [
	^ libvlc_MediaPlayerScrambledChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerScrambledChanged: anObject [
	libvlc_MediaPlayerScrambledChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerSeekableChanged [
	^ libvlc_MediaPlayerSeekableChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerSeekableChanged: anObject [
	libvlc_MediaPlayerSeekableChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerSnapshotTaken [
	^ libvlc_MediaPlayerSnapshotTaken
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerSnapshotTaken: anObject [
	libvlc_MediaPlayerSnapshotTaken := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerStopped [
	^ libvlc_MediaPlayerStopped
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerStopped: anObject [
	libvlc_MediaPlayerStopped := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerTimeChanged [
	^ libvlc_MediaPlayerTimeChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerTimeChanged: anObject [
	libvlc_MediaPlayerTimeChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerTitleChanged [
	^ libvlc_MediaPlayerTitleChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerTitleChanged: anObject [
	libvlc_MediaPlayerTitleChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerUncorked [
	^ libvlc_MediaPlayerUncorked
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerUncorked: anObject [
	libvlc_MediaPlayerUncorked := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerUnmuted [
	^ libvlc_MediaPlayerUnmuted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerUnmuted: anObject [
	libvlc_MediaPlayerUnmuted := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerVout [
	^ libvlc_MediaPlayerVout
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaPlayerVout: anObject [
	libvlc_MediaPlayerVout := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaStateChanged [
	^ libvlc_MediaStateChanged
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaStateChanged: anObject [
	libvlc_MediaStateChanged := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaSubItemAdded [
	^ libvlc_MediaSubItemAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaSubItemAdded: anObject [
	libvlc_MediaSubItemAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaSubItemTreeAdded [
	^ libvlc_MediaSubItemTreeAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaSubItemTreeAdded: anObject [
	libvlc_MediaSubItemTreeAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaThumbnailGenerated [
	^ libvlc_MediaThumbnailGenerated
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_MediaThumbnailGenerated: anObject [
	libvlc_MediaThumbnailGenerated := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_RendererDiscovererItemAdded [
	^ libvlc_RendererDiscovererItemAdded
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_RendererDiscovererItemAdded: anObject [
	libvlc_RendererDiscovererItemAdded := anObject
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_RendererDiscovererItemDeleted [
	^ libvlc_RendererDiscovererItemDeleted
]

{ #category : #accessing }
VLCEventTypeEnumeration class >> libvlc_RendererDiscovererItemDeleted: anObject [
	libvlc_RendererDiscovererItemDeleted := anObject
]
