Extension { #name : #SDL2 }

{ #category : #'*VLC-SDL' }
SDL2 class >> createMutex [
	^ self ffiCall: #( SDL_Mutex SDL_CreateMutex())
]
