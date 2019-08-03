"
VLCLibrary reset.
vlc := VLCLibrary uniqueInstance.
media := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'.
media2 := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Elton John - Rocketman (Music From The Motion Picture)/1 The Bitch Is Back (Introduction).mp3'.
mediaList := vlc createMediaList.
vlc addMedia: media inMediaList: mediaList. 
vlc addMedia: media2 inMediaList: mediaList. 
player := vlc createListPlayer.

vlc setMediaList: mediaList forListPlayer: player. 

vlc playListPlayer: player.
vlc pauseListPlayer: player.
vlc nextListPlayer: player.
vlc previousListPlayer: player.

cb := VLCEventCallback on: [:event :data | Transcript crLog: '#####################Hello'  ].

eventManager := vlc eventManagerListPlayer: player.
result := vlc
		attachToEventManager: eventManager 
		forEvent: VLCEventTypeEnumeration libvlc_MediaListPlayerNextItemSet
		withCallback: cb
		andData: 0.0.
result.
"
Class {
	#name : #VLCEventCallback,
	#superclass : #FFICallback,
	#category : #'VLC-Callback'
}

{ #category : #'instance creation' }
VLCEventCallback class >> fnSpec [
	^ #(void (const VLCEvent_t * p_event, void *p_data))
]

{ #category : #'instance creation' }
VLCEventCallback class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
