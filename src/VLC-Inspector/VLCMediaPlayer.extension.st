Extension { #name : #VLCMediaPlayer }

{ #category : #'*VLC-Inspector' }
VLCMediaPlayer >> vlcInspection [
	<inspectorPresentationOrder: 999 title: 'View'>

	^ VLCIMediaPlayer on: self
]
