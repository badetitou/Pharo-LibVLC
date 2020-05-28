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
		on: [ :data :p_pixels | 
			| pitch context |
			context := VLCSDLContext fromHandle: data getHandle.
			context mutex lock.
			pitch := FFIExternalValueHolder ofType: 'int'.
			context texture lockPixels: p_pixels pitch: pitch.
			ExternalAddress null ]
]

{ #category : #'callback spec' }
VLCSDLLock class >> fnSpec [
	^ #(void * #(VLCSDLContext * data , void ** p_pixels))
]

{ #category : #'callback spec' }
VLCSDLLock class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
