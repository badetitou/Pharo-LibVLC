Class {
	#name : #VLCIMediaPlayer,
	#superclass : #StInspection,
	#instVars : [
		'actionBar',
		'progressBar'
	],
	#category : #'VLC-Inspector'
}

{ #category : #specs }
VLCIMediaPlayer class >> defaultSpec [
	^ SpBoxLayout newVertical
		add: #progressBar;
		addLast: #actionBar
			expand: false
			fill: false
			padding: 0;
		yourself
]

{ #category : #initialization }
VLCIMediaPlayer >> initializePresenters [
	actionBar := self newActionBar
		add:
			(self newButton
				label: 'Play';
				help: 'Play.';
				action: [ self model play ];
				yourself);
		add:
			(self newButton
				label: 'Pause';
				help: 'Pause.';
				action: [ self model pause ];
				yourself);
		yourself.
	progressBar := self newProgressBar.
	progressBar progress: [ self model position ] every: 0.5 second
]
