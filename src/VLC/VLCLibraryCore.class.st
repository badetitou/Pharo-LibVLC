"
Load me on windows before using VLCLibrary
"
Class {
	#name : #VLCLibraryCore,
	#superclass : #FFILibrary,
	#category : #'VLC-Library'
}

{ #category : #'accessing platform' }
VLCLibraryCore >> getVersion [

	^ self ffiCall: 'String libvlc_get_version()'
]

{ #category : #'accessing platform' }
VLCLibraryCore >> initialize [
	super initialize.
	self calloutAPIClass inUFFIContext: thisContext
]

{ #category : #'accessing platform' }
VLCLibraryCore >> win32LibraryName [
	((OSEnvironment current at: 'Path' ifAbsent: [ '' ]) substrings: ';') , { 'C:\Program Files\VideoLAN\VLC' } do: [ :path | 
		| libraryPath |
		libraryPath := path asFileReference / 'libvlccore.dll'.
		libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlccore library. Please check if it installed on your system'
]
