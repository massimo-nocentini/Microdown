"
I am a relative reference.

I specify a resource relative to another reference. One example is the path `../images/logo.png`, which says the logo is in the images directory of my parent directory. However, I am unresolved and need to be resolved with respect to an absolute reference (file or http).
"
Class {
	#name : 'MicRelativeResourceReference',
	#superclass : 'MicResourceReference',
	#instVars : [
		'relativePath'
	],
	#category : 'Microdown-Core',
	#package : 'Microdown',
	#tag : 'Core'
}

{ #category : 'accessing' }
MicRelativeResourceReference >> fullName [ 
	^ self path
]

{ #category : 'testing' }
MicRelativeResourceReference >> isRelative [
	^ true
]

{ #category : 'accessing' }
MicRelativeResourceReference >> path [
	^ self relativePath 
]

{ #category : 'printing' }
MicRelativeResourceReference >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: self relativePath;
		nextPutAll: ')'
]

{ #category : 'accessing' }
MicRelativeResourceReference >> relativePath [

	^ relativePath 
]

{ #category : 'accessing' }
MicRelativeResourceReference >> relativePath: aString [

	relativePath := aString 
]
