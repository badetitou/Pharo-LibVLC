Extension { #name : #VLCMediaList }

{ #category : #'*VLC-Inspector' }
VLCMediaList >> vlcInspection [
	<inspectorPresentationOrder: -2 title: 'Media List'>

	^ VLCIMediaList on: self
]
