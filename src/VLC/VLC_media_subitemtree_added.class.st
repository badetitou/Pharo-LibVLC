Class {
	#name : #'VLC_media_subitemtree_added',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ITEM'
	],
	#category : #'VLC-Events'
}

{ #category : #'field definition' }
VLC_media_subitemtree_added class >> fieldsDesc [
	"self rebuildFieldAccessors"
	"struct {
      libvlc_media_t *   item
 
   }   media_subitemtree_added"
	^ #(
	void * item;
	)
]
