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
	#name : #VLCIMediaList,
	#superclass : #StInspection,
	#instVars : [
		'actionBar',
		'progressBar',
		'list'
	],
	#category : #'VLC-Inspector'
}

{ #category : #initialization }
VLCIMediaList >> defaultLayout [
	^ SpBoxLayout newHorizontal
		add: #list;
		yourself
]

{ #category : #initialization }
VLCIMediaList >> initializePresenters [
	| col |
	col := OrderedCollection new.
	0 to: self model count -1 do: [ :index | col add: (self model mediaAt: index) ].
	list := self newList.
	list
		items: col;
		display: [ :media | media title ]
]
