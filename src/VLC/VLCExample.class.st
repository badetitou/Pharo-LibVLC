Class {
	#name : #VLCExample,
	#superclass : #Object,
	#category : #'VLC-Example'
}

{ #category : #examples }
VLCExample class >> playAMusic [
	<example>
	| filePath vlc media mediaPlayer |
	filePath := ((IceRepository registry
		detect: [ :each | each includesPackageNamed: 'VLC-Tests' ]
		ifNone: [ self error: 'Please add a clone of this project to Iceberg to access to the resources' ]) location / 'res' / 'Open.mp3') fullNameWithIndicator.

	vlc := VLCLibrary uniqueInstance createVLCInstance.
	media := vlc createMediaFromPath: filePath.
	mediaPlayer := VLCLibrary uniqueInstance mediaPlayerNewFromMedia: media.
	mediaPlayer play.
	^ mediaPlayer inspect
]

{ #category : #'see class side' }
VLCExample >> seeClassSide [
]
