Class {
	#name : #VLCMedia,
	#superclass : #FFIOpaqueObject,
	#category : #'VLC-Structure'
}

{ #category : #acccessing }
VLCMedia >> artist [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_Artist
]

{ #category : #acccessing }
VLCMedia >> duration [
	^ VLCLibrary uniqueInstance mediaGetDuration: self
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
VLCMedia >> parseWithOption: aVLCMediaParseFlag timeout: aTimeOut [
	^ VLCLibrary uniqueInstance media: self parseWithOptions: aVLCMediaParseFlag timeout: aTimeOut.
]

{ #category : #acccessing }
VLCMedia >> title [
	^ VLCLibrary uniqueInstance media: self getMeta: VLCMetaT libvlc_meta_Title
]

{ #category : #acccessing }
VLCMedia >> vlcRelease [
	^ VLCLibrary uniqueInstance mediaRelease: self
]
