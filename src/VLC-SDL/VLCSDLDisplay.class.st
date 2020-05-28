"
see https://wiki.videolan.org/LibVLC_SampleCode_SDL/
"
Class {
	#name : #VLCSDLDisplay,
	#superclass : #FFICallback,
	#category : #'VLC-SDL-Callback'
}

{ #category : #'callback spec' }
VLCSDLDisplay class >> fnSpec [
	^ #(void display(void *data, void *id))
]

{ #category : #'callback spec' }
VLCSDLDisplay class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
