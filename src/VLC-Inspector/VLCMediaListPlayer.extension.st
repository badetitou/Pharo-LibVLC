Extension { #name : #VLCMediaListPlayer }

{ #category : #'*VLC-Inspector' }
VLCMediaListPlayer >> vlcInspection [
	<inspectorPresentationOrder: -2 title: 'Media List Player'>

	^ VLCIMediaListPlayer on: self
]
