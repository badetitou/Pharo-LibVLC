Class {
	#name : #VLCMedia,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #acccessing }
VLCMedia >> album [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_Album
]

{ #category : #acccessing }
VLCMedia >> artist [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_Artist
]

{ #category : #acccessing }
VLCMedia >> duration [
	^ VLCLibrary uniqueInstance mediaGetDuration: self
]

{ #category : #acccessing }
VLCMedia >> getSlaves [
	| arr nb a |
	arr := ExternalAddress allocate: ExternalAddress wordSize.
	nb := VLCLibrary uniqueInstance media: self slaveGet: arr.
	a := FFIExternalArray
		     fromHandle: arr getHandle
		     type: 'VLCMediaSlave *'
		     size: nb.
	^ a
]

{ #category : #acccessing }
VLCMedia >> mrl [
	^ VLCLibrary uniqueInstance mediaGetMRL: self
]

{ #category : #acccessing }
VLCMedia >> parseLocal [
	^ VLCLibrary uniqueInstance media: self parseWithOptions: VLCMediaParseFlag libvlc_media_parse_local timeout: 0.
]

{ #category : #acccessing }
VLCMedia >> parseStatus [
	^ VLCLibrary uniqueInstance mediaGetParsedStatus: self
]

{ #category : #acccessing }
VLCMedia >> parseWithOption: aVLCMediaParseFlag timeout: aTimeOut [
	^ VLCLibrary uniqueInstance media: self parseWithOptions: aVLCMediaParseFlag timeout: aTimeOut.
]

{ #category : #acccessing }
VLCMedia >> saveMeta [
	^ VLCLibrary uniqueInstance mediaSaveMeta: self
]

{ #category : #acccessing }
VLCMedia >> setMeta: aVLCMeta with: newMetaValue [
	^ VLCLibrary uniqueInstance media: self setMeta: aVLCMeta with: newMetaValue
]

{ #category : #acccessing }
VLCMedia >> title [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_Title
]

{ #category : #acccessing }
VLCMedia >> trackNumber [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_TrackNumber
]

{ #category : #acccessing }
VLCMedia >> vlcRelease [
	^ VLCLibrary uniqueInstance mediaRelease: self
]
