"
see https://wiki.videolan.org/LibVLC_SampleCode_SDL/
"
Class {
	#name : #VLCSDLLock,
	#superclass : #FFICallback,
	#category : #'VLC-SDL-Callback'
}

{ #category : #'callback spec' }
VLCSDLLock class >> defaultOn [
	^ self
		on: [ :context :p_pixels | 
			| pitch |
			context mutex lock.
			pitch := FFIExternalValueHolder ofType: 'int'.
			context texture lockPixels: p_pixels pitch: pitch.
			nil ]
]

{ #category : #'callback spec' }
VLCSDLLock class >> fnSpec [
	^ #(void * #(VLCSDLContext * data , void ** p_pixels))
]

{ #category : #'callback spec' }
VLCSDLLock class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
