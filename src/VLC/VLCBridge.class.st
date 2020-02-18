Class {
	#name : #VLCBridge,
	#superclass : #GitBridge,
	#category : #VLC
}

{ #category : #'class initialization' }
VLCBridge class >> initialize [
	SessionManager default registerSystemClassNamed: self name
]
