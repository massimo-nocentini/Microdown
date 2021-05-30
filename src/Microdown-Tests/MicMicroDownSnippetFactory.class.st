Class {
	#name : #MicMicroDownSnippetFactory,
	#superclass : #Object,
	#instVars : [
		'parserClass'
	],
	#category : #'Microdown-Tests-Snippets'
}

{ #category : #anchor }
MicMicroDownSnippetFactory >> anchorAreTrimedSample [
	^ self parserClass anchorMarkup, '  test  '
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> anchorReferenceSample [
	^ '*@Foo@*
'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> anchorSample [
	^ self parserClass anchorMarkup, 'test'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> anchorWithNewLineSample [
	^ self parserClass anchorMarkup, 'foo', String cr
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> anchorWithSpaceInsideSample [
	^ self parserClass anchorMarkup, 'foo bar'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> annotatedSample [
	^ '!!label Foo
'
]

{ #category : #annotations }
MicMicroDownSnippetFactory >> annotationSample [
	^ 'abc<?Foo | value=aFoo&label=42?>def'
]

{ #category : #format }
MicMicroDownSnippetFactory >> boldFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass boldMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> boldFormatSample [
	^ self surroundWithMarkup: self parserClass boldMarkup
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> codeBlockParameterWithLiteralArraySample [
	^ self codeblock: 'foo=#(1 2 true)'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> codeblock: param [ 

	^ String streamContents: [ :st | 
		st nextPutAll: self parserClass codeblockMarkup. 
		st nextPutAll: param.
		st cr.
		st nextPutAll: self parserClass codeblockMarkup. 
	]
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> codeblock: param body: body [
	
	^ String streamContents: [ :st | 
		st nextPutAll: self parserClass codeblockMarkup. 
		st nextPutAll: param.
		st cr.
		st nextPutAll: body.
		st cr.
		st nextPutAll: self parserClass codeblockMarkup. 
	]
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> codeblockNoParamBody: body [

	^ String streamContents: [ :st | 
		st nextPutAll: self parserClass codeblockMarkup. 
		st cr.
		st nextPutAll: body.
		st cr.
		st nextPutAll: self parserClass codeblockMarkup. 
	]
]

{ #category : #block }
MicMicroDownSnippetFactory >> commentSample [
	^ '% Foo'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> environmentSample [
	^ '<?Foo|value=aFoo&label=42
Foo
?>'
]

{ #category : #format }
MicMicroDownSnippetFactory >> figureSample [
	^ '![_Foo_](/anUrl?label=figureTest&size=80)
'
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerEmptySample [ 
	^ self parserClass headerMarkup
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel1Sample [
	^ self headerLevel: 1
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel2Sample [

	^ self headerLevel: 2
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel3Sample [

	^ self headerLevel: 3
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel3SampleWithNewLine [

	^ (self headerLevel: 3), self newLine
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel4Sample [

	^ self headerLevel: 4
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel5Sample [

	^ self headerLevel: 5
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel6Sample [

	^ self headerLevel: 6
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerLevel: n [

	^ String streamContents: [ :st |
		 n timesRepeat: [ st nextPutAll: self parserClass headerMarkup ].
		 st nextPutAll: ' Foo']
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerWithFormatSample [
	^ self parserClass headerMarkup, self space, self boldFormatSample
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerWithFormatSampleWithNewLine [
	^ self headerWithFormatSample, self newLine
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerWithNestedFormatSampleWithNewLine [
	^ self parserClass headerMarkup, self space, self nestedBoldFormatSample , self newLine
]

{ #category : #headers }
MicMicroDownSnippetFactory >> headerWithNewLineSample [
	^ self parserClass headerMarkup, 'Foo', String cr
]

{ #category : #headers }
MicMicroDownSnippetFactory >> horizontalLineSample [
	^ parserClass horizontalLineMarkup, String cr
]

{ #category : #initialization }
MicMicroDownSnippetFactory >> initialize [
	
	super initialize.
	parserClass := MicroDownParser
]

{ #category : #format }
MicMicroDownSnippetFactory >> italicFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass italicMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> italicFormatSample [
	^ self surroundWithMarkup: self parserClass italicMarkup
]

{ #category : #document }
MicMicroDownSnippetFactory >> lineEndSample [

	^  ''
]

{ #category : #document }
MicMicroDownSnippetFactory >> lineEndwithNewlineSample [

	^ String lf
]

{ #category : #format }
MicMicroDownSnippetFactory >> linkSample [
	^ '[Foo](/anUrl)
'
]

{ #category : #list }
MicMicroDownSnippetFactory >> listMultiSample [
	| unordered |
	unordered := self parserClass unorderedListMarkup.
	
	^ 	unordered, '1', String cr, 
		unordered, unordered, '2', String cr, 
		unordered, unordered, unordered, '3', String cr,
		unordered, unordered, '4', String cr,
		unordered, unordered, '5', String cr,	
		unordered, unordered, '6', String cr,
		unordered, '7', String cr,	
		unordered, '2. 8'
]

{ #category : #list }
MicMicroDownSnippetFactory >> listWithCommentSample [
	^ '1. Foo
%Comment
2. Bar'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> mathInlineSample [
	^ '$V_i = C_0 - C_3$
'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> mathParametersSample [
	^ '&label=42
Foo
&'
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> metaDataSample [
	^ '{
"author": "Foo"
}
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> monospaceFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass monospaceMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> monospaceFormatSample [
	^ self surroundWithMarkup: self parserClass monospaceMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> nestedBoldFormatSample [
	"self new nestedBoldFormatSample"
	^ self surround: (self surround: 'Foo' withMarkup: self parserClass boldMarkup) withMarkup: self parserClass italicMarkup  
]

{ #category : #utils }
MicMicroDownSnippetFactory >> newLine [
	^  String cr
]

{ #category : #document }
MicMicroDownSnippetFactory >> newlineCRLFSample [

	^ String crlf
]

{ #category : #document }
MicMicroDownSnippetFactory >> newlineCRSample [

	^ String cr
]

{ #category : #document }
MicMicroDownSnippetFactory >> newlineLFSample [

	^ String lf
]

{ #category : #document }
MicMicroDownSnippetFactory >> newlineSample [

	^ Smalltalk os lineEnding
]

{ #category : #list }
MicMicroDownSnippetFactory >> orderedListEmptySample [
	^ '1. '
]

{ #category : #list }
MicMicroDownSnippetFactory >> orderedListSample [
	^ '1. Foo
'
]

{ #category : #list }
MicMicroDownSnippetFactory >> orderedListWithTwoItemsSample [
	
	^ 
'1. first
1. second
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphBoldSample [
	^ 'this is a **paragraph**
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphItalicSample [
	^ 'this is a _paragraph_
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphMonospaceSample [
	^ 'this is a `paragraph`
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphNestedSample [
	^ 'this is a **_paragraph_**
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphSample [
	^ 'Foo
'
]

{ #category : #format }
MicMicroDownSnippetFactory >> paragraphStrikeSample [
	^ 'this is a ~paragraph~
'
]

{ #category : #utils }
MicMicroDownSnippetFactory >> parserClass [

	^ MicroDownParser
]

{ #category : #anchor }
MicMicroDownSnippetFactory >> quoteSample [
	^ '>  Foo'
]

{ #category : #format }
MicMicroDownSnippetFactory >> rawFormatSample [
	^ 'a{{Foo}}b
'
]

{ #category : #document }
MicMicroDownSnippetFactory >> rootSample [
	| stream |
	stream := (String new: 10000) writeStream.
	stream nextPutAll: self headerLevel2Sample;
	nextPutAll: self paragraphNestedSample;
	nextPutAll: self figureSample.
	^ stream contents
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterEscapeSample [
	^ 'value\==foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterSample [
	^ 'value=foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterTrueByDefaultSample [
	^ self codeblock: 'foo' body: 'bar'
	
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterValueSample [
	^ '=foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterWithFloatSample [
	^ self codeblock: 'ratio=0.8' body: 'bar'
	
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterWithLiteralArraySample [
	^ self codeblock: 'foo=#(1 2 true)'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterWithNoValuesSample [
	^ self codeblock: 'foo=' body: 'bar'

]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterWithSpacesBeforeAndAfterSample [
	^ ' foo = true & bar = 2 
'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParameterWithoutValueSample [
	^ 'foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParametersEscapeSample [
	^ 'value=foo\&&bar
'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParametersMultipleSample [
	^ 'value=foo&bar
'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptParametersSample [
	^ self 
		codeblock:   'foo=true&bar=2'
		body: 'bla'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptSample [
	^ self codeblockNoParamBody: 'foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptTwoParametersNoValueSample [
	^ 'foo&bar
'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptWithLanguageSample [
	^ self codeblock: 'language=smalltalk' body: 'foo'
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptWithNewLineSample [
	^ (self codeblockNoParamBody: 'foo'), String cr
]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptWithSpaceAtTheEndSample [
		
	 ^ (self codeblockNoParamBody: 'foo'), '  '.


]

{ #category : #'code block' }
MicMicroDownSnippetFactory >> scriptWithSpacedParametersSample [
	^ self 
		codeblock:   ' foo = true & bar = 2'
		body: 'bla'
]

{ #category : #utils }
MicMicroDownSnippetFactory >> space [ 

	^ String space
]

{ #category : #format }
MicMicroDownSnippetFactory >> strikethroughFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass strikeMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> strikethroughFormatSample [
	^ self surroundWithMarkup: self parserClass strikeMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> subscriptFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass subscriptMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> subscriptFormatSample [
	^ self surroundWithMarkup: self parserClass subscriptMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> superscriptFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass superscriptMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> superscriptFormatSample [
	^ self surroundWithMarkup: self parserClass superscriptMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> surround: aWord withMarkup: aMarkup [
	^ (aMarkup, aWord, aMarkup) asString
]

{ #category : #format }
MicMicroDownSnippetFactory >> surroundWithMarkup: aMarkup [
	^ self surround: 'Foo' withMarkup: aMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> underlineFormatEmptySample [
	^ self surround: '' withMarkup: self parserClass underlineMarkup
]

{ #category : #format }
MicMicroDownSnippetFactory >> underlineFormatSample [
	^ self surroundWithMarkup: self parserClass underlineMarkup
]

{ #category : #list }
MicMicroDownSnippetFactory >> unorderedListEmptySample [
	^ self parserClass unorderedListMarkup
]

{ #category : #list }
MicMicroDownSnippetFactory >> unorderedListSample [
	^ self parserClass unorderedListMarkup, 'Foo
'
]

{ #category : #list }
MicMicroDownSnippetFactory >> unorderedListWithSubListSample [
	| listMarkup |
	listMarkup := self parserClass unorderedListMarkup.
	^ listMarkup, 'Foo', String cr, listMarkup, listMarkup, 'Bar'
]

{ #category : #list }
MicMicroDownSnippetFactory >> unorderedListWithTwoItemsSample [
	| listMarkup |
	listMarkup := self parserClass unorderedListMarkup.
	^ listMarkup, 'Foo', String cr, listMarkup, 'Bar
'
]