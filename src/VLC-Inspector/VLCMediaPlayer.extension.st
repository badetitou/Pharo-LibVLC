Extension { #name : #VLCMediaPlayer }

{ #category : #'*VLC-Inspector' }
VLCMediaPlayer >> vlcInspection [
	<inspectorPresentationOrder: -2 title: 'Media Player'>

	^ VLCIMediaPlayer on: self
]
