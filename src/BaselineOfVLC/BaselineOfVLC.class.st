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
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ].
	spec
		for: #'pharo7.x'
		do: [ self defineDependencies: spec.
			spec
				package: 'VLC-Pharo7' with: [ spec requires: 'VLC' ];
				package: 'VLC' with: [ spec requires: #('GitBridge') ] ]
]

{ #category : #baselines }
BaselineOfVLC >> defineDependencies: spec [
	spec baseline: 'GitBridge' with: [ spec repository: 'github://jecisc/GitBridge:v1.x.x/src' ]
]

{ #category : #baselines }
BaselineOfVLC >> defineGroups: spec [
	spec
		group: 'default' with: #('VLC' 'VLC-Tests' 'VLC-Inspector')
]

{ #category : #baselines }
BaselineOfVLC >> definePackages: spec [
	spec
		package: 'VLC' with: [ spec requires: #('GitBridge')];
		package: 'VLC-Tests' with: [ spec requires: #('VLC') ];
		package: 'VLC-Inspector'
]
