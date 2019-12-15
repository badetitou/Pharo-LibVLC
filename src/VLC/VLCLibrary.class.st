"
When you use me: 

1. create an instance of me with #createVLCInstance or #createVLCWithArguments:
"
Class {
	#name : #VLCLibrary,
	#superclass : #FFILibrary,
	#category : #'VLC-Library'
}

{ #category : #'class initialization' }
VLCLibrary class >> initialize [
	"reset me when startup"
	Smalltalk addToStartUpList: self.
	"We need to load LibraryCore before using this one"
	VLCLibraryCore uniqueInstance 
]

{ #category : #initialization }
VLCLibrary class >> reset [ 
	uniqueInstance := nil
]

{ #category : #'class initialization' }
VLCLibrary class >> startUp: isImageStarting [

	isImageStarting ifTrue: [ self reset ]
]

{ #category : #initialization }
VLCLibrary >> addIntf: aLIBVLCInstance [
	^ self ffiCall: 'void libvlc_release (VLCInstance * aLIBVLCInstance)'
]

{ #category : #initialization }
VLCLibrary >> addIntfTo: aLIBVLCInstance named: name [
	^ self ffiCall: 'void libvlc_release (VLCInstance * aLIBVLCInstance, String name)'
]

{ #category : #'media list' }
VLCLibrary >> addMedia: aMedia inMediaList: aMediaList [
	^ self ffiCall: 'bool libvlc_media_list_add_media(void* aMediaList, void* aMedia)'
]

{ #category : #media }
VLCLibrary >> addOption: theOption toMedia: aMedia [
	"full example:

colArguments := OrderedCollection new.
colArguments add: '--no-video'.
vlc := VLCLibrary uniqueInstance createVLCWithArguments: colArguments.

mediaList := VLCLibrary uniqueInstance createMediaListFromInstance: vlc.
media := VLCLibrary uniqueInstance mediaFileForInstance: vlc fromStringPath: '/home/badetitou/myVideo.mkv'.
VLCLibrary uniqueInstance addMedia: media inMediaList: mediaList.

VLCLibrary uniqueInstance addOption: ':sout=#transcode{vcodec=h264,vb=150,acodec=mp4a,ab=50,mono,channels=1}:standard{mux=ts,dst=:8484/vlc_stream.mp4,access=http}' toMedia: media.

mediaListPlayer := VLCLibrary uniqueInstance createListPlayerForInstance: vlc.
VLCLibrary uniqueInstance setMediaList: mediaList forListPlayer: mediaListPlayer.
VLCLibrary uniqueInstance playListPlayer: mediaListPlayer."
	
	| optionString |
	optionString := ExternalAddress fromString: theOption.
	^ self vlcAddOption: optionString toMedia: aMedia
]

{ #category : #'event manager' }
VLCLibrary >> attachToEventManager: anEventManager forEvent: aTypeOfEvent withCallback: aCallbackMethod andData: dataWeWantToCarryWithTheEvent [
	"
	anEventManager := vlc eventManagerListPlayer: aListPlayer.
	vlc
		attachToEventManager: eventManager 
		forEvent: VLCEventTypeEnumeration libvlc_MediaListPlayerNextItemSet
		withCallback: VLCEvent
		andData: 0.0.
	"

	self
		ffiCall:
			'
	int libvlc_event_attach ( void * anEventManager,
	VLCEventTypeEnumeration aTypeOfEvent,
	VLCEventCallback aCallbackMethod,
	float* dataWeWantToCarryWithTheEvent 
)	'
]

{ #category : #time }
VLCLibrary >> clock [
"Return the current time as defined by LibVLC.

The unit is the microsecond. Time increases monotonically (regardless of time zone changes and RTC adjustements). The origin is arbitrary but consistent across the whole system (e.g. the system uptim, the time since the system was booted).

Note
On systems that support it, the POSIX monotonic clock is used."
	^ self ffiCall: 'int64 libvlc_clock(void)	'
]

{ #category : #'media list' }
VLCLibrary >> countMediaIn: aMediaList [
	^ self ffiCall: 'int libvlc_media_list_count (void * aMediaList)'
]

{ #category : #'media list player' }
VLCLibrary >> createListPlayerForInstance: anInstance [
	^ self ffiCall: 'void* libvlc_media_list_player_new(void* anInstance)'
]

{ #category : #'media list' }
VLCLibrary >> createMediaListFromInstance: aVLCInstance [
	^ self ffiCall: 'void* libvlc_media_list_new(void* aVLCInstance)'
]

{ #category : #'media player' }
VLCLibrary >> createPlayerForMedia: aVLCMedia [
	"example:
	
	| media player vlc |
	vlc := VLCLibrary uniqueInstance.
	media := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'.	
	player := vlc createPlayerForMedia: media.
	"

	^ self ffiCall: 'void* libvlc_media_player_new_from_media(void* aVLCMedia);'
]

{ #category : #initialization }
VLCLibrary >> createVLCInstance [
	^ self ffiCall: 'VLCInstance * libvlc_new()'
]

{ #category : #initialization }
VLCLibrary >> createVLCWithArguments: aCollectionOfString [
	"colArguments := OrderedCollection new.
	colArguments add: '--novideo'.
	vlc := VLCLibrary uniqueInstance initializeVLCWithArguments: colArguments.
	media := vlc mediaFileFromStringLocation: 'https://s6.onlinevideoconverter.com/download?file=d3a0d3e4a0c2f5'.	
	player := vlc createPlayerForMedia: media.
	vlc playMediaPlayer: player.
	vlc pauseMediaPlayer: player.
	vlc isMediaPlayerPlaying: player"

	| externalArray |
	externalArray := (FFIExternalArray externalNewType: 'void*' size: aCollectionOfString size) autoRelease.
	aCollectionOfString withIndexDo: [ :string :index | externalArray at: index put: (ExternalAddress fromString: string) autoRelease ].
	^ self initializeVLCWithArguments: externalArray getHandle andNumberOfArgs: aCollectionOfString size.
]

{ #category : #time }
VLCLibrary >> delay: aTime [
"Return the delay (in microseconds) until a certain timestamp.

# Parameters
	*aTime* timestamp

# 	Returns
	negative if timestamp is in the past, positive if it is in the future
"
	self flag: 'may fail because problem with "static"'.
	^ self ffiCall: 'int64 libvlc_delay(int64 aTime)'
]

{ #category : #'event manager' }
VLCLibrary >> detachToEventManager: anEventManager forEvent: aTypeOfEvent withCallback: aCallbackMethod andData: dataWeWantToCarryWithTheEvent [
	"
	anEventManager := vlc eventManagerListPlayer: aListPlayer.
	vlc
		detachToEventManager: eventManager 
		forEvent: VLCEventTypeEnumeration libvlc_MediaListPlayerNextItemSet
		withCallback: VLCEvent
		andData: 0.0.
	"

	self
		ffiCall:
			'
	void libvlc_event_detach ( void * anEventManager,
	VLCEventTypeEnumeration aTypeOfEvent,
	VLCEventCallback aCallbackMethod,
	float* dataWeWantToCarryWithTheEvent 
)	'
]

{ #category : #'media list player' }
VLCLibrary >> eventManagerListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_event_manager (void* aListPlayer)'
]

{ #category : #meta }
VLCLibrary >> getChangeset [

	^ self ffiCall: 'String libvlc_get_changeset()'
]

{ #category : #meta }
VLCLibrary >> getCompiler [

	^ self ffiCall: 'String libvlc_get_compiler()'
]

{ #category : #'media list player' }
VLCLibrary >> getCurrentMediaPlayerOfListPlayer: aListPlayer [
	^ self ffiCall: 'void * libvlc_media_list_player_get_media_player (void * aListPlayer)'
]

{ #category : #'media player' }
VLCLibrary >> getMediaInsideMediaPlayer: aMediaPlayer [
	^ self ffiCall: 'void * libvlc_media_player_get_media(void* aMediaPlayer);'
]

{ #category : #meta }
VLCLibrary >> getVersion [

	^ self ffiCall: 'String libvlc_get_version()'
]

{ #category : #initialization }
VLCLibrary >> initialize [
	super initialize.
]

{ #category : #initialization }
VLCLibrary >> initializeVLCWithArguments: aCollectionOfString andNumberOfArgs: sizeOfCollectionOfString [
	^ self ffiCall: 'void * libvlc_new(int sizeOfCollectionOfString, void * aCollectionOfString);'
]

{ #category : #'media list' }
VLCLibrary >> insertInMediaList: aMediaList media: aMedia atIndex: anIndex [
	^ self ffiCall: 'int libvlc_media_list_insert_media (void * aMediaList, void * aMedia, int anIndex)'
]

{ #category : #'media list player' }
VLCLibrary >> isListPlayerPlaying: aListPlayer [
	^ self ffiCall: 'bool libvlc_media_list_player_is_playing (void* aListPlayer)'
]

{ #category : #'media player' }
VLCLibrary >> isMediaPlayerPlaying: aMediaPlayer [
	"
	| vlc media player |
	vlc := VLCLibrary uniqueInstance.
	media := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'.	
	player := vlc createPlayerForMedia: media.
	vlc isMediaPlayerPlaying: aMediaPlayer
	"
	^ self ffiCall: 'bool libvlc_media_player_is_playing(void* aMediaPlayer);'
]

{ #category : #media }
VLCLibrary >> mediaFileForInstance: aVLCInstance fromFileDescriptor: fileDescriptor [
	^ self ffiCall: 'void* libvlc_media_new_fd(void* aVLCInstance, int fileDescriptor);'
]

{ #category : #media }
VLCLibrary >> mediaFileForInstance: aVLCInstance fromStringLocation: aLocation [
	^ self ffiCall: 'void* libvlc_media_new_location (void * aVLCInstance, String aLocation);'
]

{ #category : #media }
VLCLibrary >> mediaFileForInstance: aVLCInstance fromStringPath: aStringPath [
	"ex self mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'"
	^ self ffiCall: 'void* libvlc_media_new_path(void* aVLCInstance, String aStringPath);'
]

{ #category : #'media list player' }
VLCLibrary >> nextListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_next (void* aListPlayer)'
]

{ #category : #'media list player' }
VLCLibrary >> pauseListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_pause (void* aListPlayer)'
]

{ #category : #'media player' }
VLCLibrary >> pauseMediaPlayer: aMediaPlayer [
	"
	| vlc media player |
	vlc := VLCLibrary uniqueInstance.
	media := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'.	
	player := vlc createPlayerForMedia: media.
	vlc pauseMediaPlayer: player
	"
	^ self ffiCall: 'void * libvlc_media_player_pause(void* aMediaPlayer);'
]

{ #category : #'media list player' }
VLCLibrary >> playAt: indexMedia listPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_play_item_at_index (void* aListPlayer, int indexMedia)'
]

{ #category : #'media list player' }
VLCLibrary >> playItem: aMedia listPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_play_item (void* aListPlayer, void* aMedia)'
]

{ #category : #'media list player' }
VLCLibrary >> playListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_play (void* aListPlayer)'
]

{ #category : #'media player' }
VLCLibrary >> playMediaPlayer: aMediaPlayer [
	"
	| vlc media player |
	vlc := VLCLibrary uniqueInstance.
	media := vlc mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'.	
	player := vlc createPlayerForMedia: media.
	vlc playMediaPlayer: player
	"
	^ self ffiCall: 'int libvlc_media_player_play(void* aMediaPlayer);'
]

{ #category : #'media player' }
VLCLibrary >> positionMediaPlayer: aMediaPlayer [
	"return a value between 0.0 and 1.0"
	^ self ffiCall: 'float libvlc_media_player_get_position(void* aMediaPlayer);'
]

{ #category : #'media player' }
VLCLibrary >> positionMediaPlayer: aMediaPlayer setAt: thePositionAsFloatBetweenOAnd1 [
	"return a value between 0.0 and 1.0"

	^ self ffiCall: 'float libvlc_media_player_set_position(void* aMediaPlayer, float thePositionAsFloatBetweenOAnd1, true);'
]

{ #category : #'media list player' }
VLCLibrary >> previousListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_previous (void* aListPlayer)'
]

{ #category : #initialization }
VLCLibrary >> release: aLIBVLCInstance [
	^ self ffiCall: 'void libvlc_release (VLCInstance * aLIBVLCInstance)'
]

{ #category : #media }
VLCLibrary >> releaseMedia: aMedia [
	"ex self mediaFileFromStringPath: '/home/badetitou/Musique/Coda.mp3'"
	^ self ffiCall: 'void* libvlc_media_release(void* aMedia);'
]

{ #category : #'media player' }
VLCLibrary >> resetMediaPlayer: aMediaPlayer [
	self positionMediaPlayer: aMediaPlayer setAt: 0.0 
]

{ #category : #initialization }
VLCLibrary >> retain: aLIBVLCInstance [
	^ self ffiCall: 'voic libvlc_retain (VLCInstance * aLIBVLCInstance)'
]

{ #category : #'media list player' }
VLCLibrary >> setMediaList: aMediaList forListPlayer: aListPlayer [
	^ self ffiCall: 'void* libvlc_media_list_player_set_media_list (void* aListPlayer, void* aMediaList)'
]

{ #category : #'media player' }
VLCLibrary >> setXWindows: indentifier forMediaPlayer: aMediaPlayer [
	^ self ffiCall: 'void libvlc_media_player_set_xwindow(void* aMediaPlayer, int indentifier);'
]

{ #category : #'media list player' }
VLCLibrary >> stopListPlayer: aListPlayer [
	^ self ffiCall: 'void * libvlc_media_list_player_stop (void* aListPlayer)'
]

{ #category : #'accessing platform' }
VLCLibrary >> unix32LibraryName [
	#('/usr/lib/i386-linux-gnu' '/usr/lib32' '/usr/lib') , ((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':')
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libvlc.so'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlc library. Please check if it installed on your system'
]

{ #category : #'accessing platform' }
VLCLibrary >> unix64LibraryName [
	#('/usr/lib/i386-linux-gnu' '/usr/lib32' '/usr/lib') , ((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':')
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libvlc.so'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlc library. Please check if it installed on your system'
]

{ #category : #'private - media' }
VLCLibrary >> vlcAddOption: theOption toMedia: aMedia [
	^ self ffiCall: 'void* libvlc_media_add_option(void* aMedia, void * theOption);'
]

{ #category : #'accessing platform' }
VLCLibrary >> win32LibraryName [
	((OSEnvironment current at: 'Path' ifAbsent: [ '' ]) substrings: ';'), {'C:\Program Files\VideoLAN\VLC'}
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libvlc.dll'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlc library. Please check if it installed on your system'
]
