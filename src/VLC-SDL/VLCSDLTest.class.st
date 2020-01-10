Class {
	#name : #VLCSDLTest,
	#superclass : #Object,
	#pools : [
		'SDL2Constants',
		'SDL2Types'
	],
	#category : #'VLC-SDL'
}

{ #category : #'as yet unclassified' }
VLCSDLTest >> createSDL [
	^ SDL2
		createWindow: 'Test Window'
		x: SDL_WINDOWPOS_UNDEFINED
		y: SDL_WINDOWPOS_UNDEFINED
		width: 640
		height: 480
		flags: SDL_WINDOW_SHOWN
]

{ #category : #'as yet unclassified' }
VLCSDLTest >> createTextureForRenderer: aRenderer [
	^ aRenderer createTextureFormat: SDL_PIXELFORMAT_RGBX8888 access: SDL_TEXTUREACCESS_STREAMING width: 320 height: 240

]
