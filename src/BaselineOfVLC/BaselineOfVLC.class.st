Class {
	#name : #BaselineOfVLC,
	#superclass : #BaselineOf,
	#category : #BaselineOfVLC
}

{ #category : #baselines }
BaselineOfVLC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ].
	spec
		for: #'pharo7.x'
		do: [ 
			spec
				package: 'VLC-Pharo7';
				package: 'VLC' with: [ spec requires: 'VLC-Pharo7' ] ].
]

{ #category : #baselines }
BaselineOfVLC >> defineDependencies: spec [
]

{ #category : #baselines }
BaselineOfVLC >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfVLC >> definePackages: spec [
	spec
		package: 'VLC';
		package: 'VLC-Tests' with: [ spec requires: #('VLC') ]
]
