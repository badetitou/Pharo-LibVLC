"
Load me on windows before using VLCLibrary
"
Class {
	#name : #VLCLibraryCore,
	#superclass : #FFILibrary,
	#category : #'VLC-Library'
}

{ #category : #'system startup' }
VLCLibraryCore class >> initialize [
	"reset me when startup"
	Smalltalk addToStartUpList: self.
]

{ #category : #'system startup' }
VLCLibraryCore class >> reset [ 
	uniqueInstance := nil
]

{ #category : #'system startup' }
VLCLibraryCore class >> startUp: isImageStarting [

	isImageStarting ifTrue: [ self reset ]
]

{ #category : #meta }
VLCLibraryCore >> getCompileBy [

	^ self ffiCall: #(String VLC_CompileBy())
]

{ #category : #meta }
VLCLibraryCore >> getCompileHost [

	^ self ffiCall: #(String VLC_CompileHost())
]

{ #category : #meta }
VLCLibraryCore >> getCompiler [

	^ self ffiCall: #(String VLC_Compiler())
]

{ #category : #'accessing platform' }
VLCLibraryCore >> initialize [
	super initialize.
	self getCompiler
]

{ #category : #'accessing platform' }
VLCLibraryCore >> macLibraryName [
	^ '/Applications/VLC.app/Contents/MacOS/lib/libvlccore.dylib'
]

{ #category : #'accessing platform' }
VLCLibraryCore >> unix32LibraryName [
	#('/usr/lib/i386-linux-gnu' '/usr/lib32' '/usr/lib') , ((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':')
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libvlccore.so'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlccore library. Please check if it installed on your system'
]

{ #category : #'accessing platform' }
VLCLibraryCore >> unix64LibraryName [
	#('/usr/lib/i386-linux-gnu' '/usr/lib32' '/usr/lib') , ((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':')
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libvlccore.so'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlccore library. Please check if it installed on your system'
]

{ #category : #'accessing platform' }
VLCLibraryCore >> win32LibraryName [
	((OSEnvironment current at: 'Path' ifAbsent: [ '' ]) substrings: ';') , { 'C:\Program Files\VideoLAN\VLC' } do: [ :path | 
		| libraryPath |
		libraryPath := path asFileReference / 'libvlccore.dll'.
		libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlccore library. Please check if it installed on your system'
]
