Class {
	#name : #VLCMetaT,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'libvlc_meta_Actors',
		'libvlc_meta_Album',
		'libvlc_meta_AlbumArtist',
		'libvlc_meta_Artist',
		'libvlc_meta_ArtworkURL',
		'libvlc_meta_Copyright',
		'libvlc_meta_Date',
		'libvlc_meta_Description',
		'libvlc_meta_Director',
		'libvlc_meta_DiscNumber',
		'libvlc_meta_DiscTotal',
		'libvlc_meta_EncodedBy',
		'libvlc_meta_Episode',
		'libvlc_meta_Genre',
		'libvlc_meta_Language',
		'libvlc_meta_NowPlaying',
		'libvlc_meta_Publisher',
		'libvlc_meta_Rating',
		'libvlc_meta_Season',
		'libvlc_meta_Setting',
		'libvlc_meta_ShowName',
		'libvlc_meta_Title',
		'libvlc_meta_TrackID',
		'libvlc_meta_TrackNumber',
		'libvlc_meta_TrackTotal',
		'libvlc_meta_URL'
	],
	#category : #'VLC-Enumeration'
}

{ #category : #'enum declaration' }
VLCMetaT class >> enumDecl [
	^ #(libvlc_meta_Title 0 
	libvlc_meta_Artist 1
	libvlc_meta_Genre 2
	libvlc_meta_Copyright 3
	libvlc_meta_Album 4
	libvlc_meta_TrackNumber 5
	libvlc_meta_Description 6 
	libvlc_meta_Rating 7
	libvlc_meta_Date 8
	libvlc_meta_Setting 9
	libvlc_meta_URL 10
	libvlc_meta_Language 11
	libvlc_meta_NowPlaying 12 
	libvlc_meta_Publisher 13
	libvlc_meta_EncodedBy 14 
	libvlc_meta_ArtworkURL 15
	libvlc_meta_TrackID 16
	libvlc_meta_TrackTotal 17
	libvlc_meta_Director 18
	libvlc_meta_Season 19
	libvlc_meta_Episode 20
	libvlc_meta_ShowName 21 
	libvlc_meta_Actors 22 
	libvlc_meta_AlbumArtist 23
	libvlc_meta_DiscNumber 24 
	libvlc_meta_DiscTotal 25)
]

{ #category : #'enum declaration' }
VLCMetaT class >> initialize [
	self initializeEnumeration
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Actors [
	"This method was automatically generated"
	^ libvlc_meta_Actors
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Album [
	"This method was automatically generated"
	^ libvlc_meta_Album
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_AlbumArtist [
	"This method was automatically generated"
	^ libvlc_meta_AlbumArtist
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Artist [
	"This method was automatically generated"
	^ libvlc_meta_Artist
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_ArtworkURL [
	"This method was automatically generated"
	^ libvlc_meta_ArtworkURL
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Copyright [
	"This method was automatically generated"
	^ libvlc_meta_Copyright
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Date [
	"This method was automatically generated"
	^ libvlc_meta_Date
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Description [
	"This method was automatically generated"
	^ libvlc_meta_Description
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Director [
	"This method was automatically generated"
	^ libvlc_meta_Director
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_DiscNumber [
	"This method was automatically generated"
	^ libvlc_meta_DiscNumber
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_DiscTotal [
	"This method was automatically generated"
	^ libvlc_meta_DiscTotal
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_EncodedBy [
	"This method was automatically generated"
	^ libvlc_meta_EncodedBy
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Episode [
	"This method was automatically generated"
	^ libvlc_meta_Episode
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Genre [
	"This method was automatically generated"
	^ libvlc_meta_Genre
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Language [
	"This method was automatically generated"
	^ libvlc_meta_Language
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_NowPlaying [
	"This method was automatically generated"
	^ libvlc_meta_NowPlaying
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Publisher [
	"This method was automatically generated"
	^ libvlc_meta_Publisher
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Rating [
	"This method was automatically generated"
	^ libvlc_meta_Rating
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Season [
	"This method was automatically generated"
	^ libvlc_meta_Season
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Setting [
	"This method was automatically generated"
	^ libvlc_meta_Setting
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_ShowName [
	"This method was automatically generated"
	^ libvlc_meta_ShowName
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_Title [
	"This method was automatically generated"
	^ libvlc_meta_Title
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_TrackID [
	"This method was automatically generated"
	^ libvlc_meta_TrackID
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_TrackNumber [
	"This method was automatically generated"
	^ libvlc_meta_TrackNumber
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_TrackTotal [
	"This method was automatically generated"
	^ libvlc_meta_TrackTotal
]

{ #category : #'accessing enum' }
VLCMetaT class >> libvlc_meta_URL [
	"This method was automatically generated"
	^ libvlc_meta_URL
]
