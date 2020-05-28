"
see https://wiki.videolan.org/LibVLC_SampleCode_SDL/
"
Class {
	#name : #VLCSDLLock,
	#superclass : #FFICallback,
	#category : #'VLC-SDL-Callback'
}

{ #category : #'callback spec' }
VLCSDLLock class >> fnSpec [
	^ #(void * (void * data, void ** p_pixels))
]

{ #category : #'callback spec' }
VLCSDLLock class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
