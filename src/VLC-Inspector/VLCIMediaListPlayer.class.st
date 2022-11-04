"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	actionBar:		<Object>
	progressBar:		<Object>


    Implementation Points
"
Class {
	#name : #VLCIMediaListPlayer,
	#superclass : #StInspection,
	#instVars : [
		'actionBar',
		'progressBar',
		'list'
	],
	#category : #'VLC-Inspector'
}

{ #category : #initialization }
VLCIMediaListPlayer >> defaultLayout [
	^ SpBoxLayout newVertical
		add: #progressBar;
		addLast: #actionBar
			expand: false
			fill: false
			padding: 0
]

{ #category : #initialization }
VLCIMediaListPlayer >> initializePresenters [
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
	progressBar progress: [ self model mediaPlayer position ] every: 0.5 second
]
