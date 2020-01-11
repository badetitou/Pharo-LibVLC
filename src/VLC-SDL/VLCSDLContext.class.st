Class {
	#name : #VLCSDLContext,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_MUTEX',
		'OFFSET_N',
		'OFFSET_RENDERER',
		'OFFSET_TEXTURE'
	],
	#category : #'VLC-SDL'
}

{ #category : #'field definition' }
VLCSDLContext class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #( SDL_Renderer * renderer;
    SDL_Texture * texture;
    SDL_Mutex * mutex;
    int n;)
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> mutex [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MUTEX) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> mutex: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MUTEX put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> n [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_N
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> n: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_N put: anObject
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> renderer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_RENDERER) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> renderer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RENDERER put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> texture [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXTURE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
VLCSDLContext >> texture: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXTURE put: anObject getHandle.
]
