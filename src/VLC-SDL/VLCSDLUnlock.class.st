"
see https://wiki.videolan.org/LibVLC_SampleCode_SDL/
"
Class {
	#name : #VLCSDLUnlock,
	#superclass : #FFICallback,
	#category : #'VLC-SDL-Callback'
}

{ #category : #'callback spec' }
VLCSDLUnlock class >> defaultOn [
	^ self
		on: [ :context :id :p_pixels | 
			context texture unlock.
			context mutex unlock ]
]

{ #category : #'callback spec' }
VLCSDLUnlock class >> fnSpec [
	^ #(void #(VLCSDLContext * data , void * id , void ** p_pixels))
]

{ #category : #'callback spec' }
VLCSDLUnlock class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
