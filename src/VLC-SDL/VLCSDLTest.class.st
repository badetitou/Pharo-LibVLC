"
vlcsdl := VLCSDLTest new.

""init callback""
lock := VLCSDLLock defaultOn.
unlock := VLCSDLUnlock defaultOn.
display := VLCSDLDisplay defaultOn. 

""Init SDL2""
SDL2 initVideo.

""Create context structure""
context := VLCSDLContext externalNew.


window := vlcsdl createWindow.
context renderer: (window createRenderer: 0 flags: -1).
context texture: (vlcsdl createTextureForRenderer: (context renderer)).
context mutex: SDL2 createMutex.

vlc := VLCLibrary uniqueInstance createVLCWithArguments: {'--no-audio' . '--no-xlib'}.
media := vlc createMediaFromPath: '/home/badetitou/Vidéos/garbabes.avi'.
mediaPlayer := vlc createMediaPlayerFromMedia: media.
media vlcRelease.

VLCLibrary uniqueInstance videoSetCallbacksMediaPlayer: mediaPlayer lockCallback: lock unlockCallback: unlock displayCallback: display opaque: opaque.

""clean""

mediaPlayer stop.
mediaPlayer vlcRelease.
vlc vlcRelease.

""SDL_DestroyMutex(context.mutex);
SDL_DestroyRenderer(context.renderer);""
"
Class {
	#name : #VLCSDLTest,
	#superclass : #Object,
	#instVars : [
		'width',
		'height',
		'videowidth',
		'videoheight'
	],
	#pools : [
		'SDL2Constants',
		'SDL2Types'
	],
	#category : #'VLC-SDL'
}

{ #category : #'as yet unclassified' }
VLCSDLTest >> createSDL [
	^ SDL2
		createWindow: 'Fartplayer'
		x: SDL_WINDOWPOS_UNDEFINED
		y: SDL_WINDOWPOS_UNDEFINED
		width: self width 
		height: self height
		flags: SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE
]

{ #category : #'as yet unclassified' }
VLCSDLTest >> createTextureForRenderer: aRenderer [
	^ aRenderer
		createTextureFormat: SDL_PIXELFORMAT_ARGB8888
		access: SDL_TEXTUREACCESS_STREAMING
		width: self videowidth
		height: self videoheight
]

{ #category : #'as yet unclassified' }
VLCSDLTest >> createWindow [
	^ SDL2
		createWindow: 'Pharo Player'
		x: SDL_WINDOWPOS_UNDEFINED
		y: SDL_WINDOWPOS_UNDEFINED
		width: self width 
		height: self height
		flags: SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE
]

{ #category : #accessing }
VLCSDLTest >> height [
	^ height
]

{ #category : #accessing }
VLCSDLTest >> height: anObject [
	height := anObject
]

{ #category : #accessing }
VLCSDLTest >> initialize [ 
	super initialize.
	self height: 480.
	self width: 640.
	self videoheight: 240.
	self videowidth: 320.
]

{ #category : #'as yet unclassified' }
VLCSDLTest >> setFormatMediaPlayer: mp [
	VLCLibrary uniqueInstance
		videoSetFormatMediaPlayer: mp
		chroma: 'RV16'
		width: self videowidth
		height: self videoheight
		pitch: self videowidth * 2
]

{ #category : #accessing }
VLCSDLTest >> videoheight [
	^ videoheight
]

{ #category : #accessing }
VLCSDLTest >> videoheight: anObject [
	videoheight := anObject
]

{ #category : #accessing }
VLCSDLTest >> videowidth [
	^ videowidth
]

{ #category : #accessing }
VLCSDLTest >> videowidth: anObject [
	videowidth := anObject
]

{ #category : #accessing }
VLCSDLTest >> width [
	^ width
]

{ #category : #accessing }
VLCSDLTest >> width: anObject [
	width := anObject
]
