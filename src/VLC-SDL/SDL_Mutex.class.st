Class {
	#name : #'SDL_Mutex',
	#superclass : #SDL2Handle,
	#pools : [
		'SDL2Constants',
		'SDL2Types'
	],
	#category : #'VLC-SDL'
}

{ #category : #initialization }
SDL_Mutex >> initialize [
	super initialize.
	self autoRelease
]

{ #category : #'actions api' }
SDL_Mutex >> lock [
	^ self ffiCall: #( void SDL_LockMutex ( self ) )
]

{ #category : #'actions api' }
SDL_Mutex >> unlock [
	^ self ffiCall: #( void SDL_UnlockMutex ( self ) )
]
