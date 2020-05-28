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
		createWindow: 'Fartplayer'
		x: SDL_WINDOWPOS_UNDEFINED
		y: SDL_WINDOWPOS_UNDEFINED
		width: self width 
		height: self height
		flags: SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE
]

{ #category : #accessing }
VLCSDLTest >> getDisplayCallback [
	^ VLCVideoDisplayCallback
		on: [ :context :id | 
			| rect |
			rect := SDL_Rect
				newX: (1 + (0.5 * (0.03 * context n) sin)) * (640 - 320) / 2
				y: (1 + (0.5 * (0.03 * context n) cos)) * (480 - 240) / 2
				w: 320
				h: 240.

			context renderer
				drawColorR: 0
				g: 80
				b: 0
				a: 255.
			context renderer clear.
			context renderer copy: context texture srcRect: nil dstRect: rect context renderer present ]
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
