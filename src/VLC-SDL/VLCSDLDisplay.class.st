"
see https://wiki.videolan.org/LibVLC_SampleCode_SDL/
"
Class {
	#name : #VLCSDLDisplay,
	#superclass : #FFICallback,
	#category : #'VLC-SDL-Callback'
}

{ #category : #'callback spec' }
VLCSDLDisplay class >> defaultOn [
	^ self
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

{ #category : #'callback spec' }
VLCSDLDisplay class >> fnSpec [
	^ #(void #(VLCSDLContext * data , void * id))
]

{ #category : #'callback spec' }
VLCSDLDisplay class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
