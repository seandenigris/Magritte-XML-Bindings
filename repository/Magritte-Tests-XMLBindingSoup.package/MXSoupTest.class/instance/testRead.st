as yet unclassified
testRead
	| soup created |
	soup := Soup fromString: '<?xml version=''1.0'' encoding=''UTF-8'' standalone=''yes'' ?><simpleObject index="1" title="my title"><abstract>My abstract</abstract><date>7/27/2016</date><token type="my token type" /></simpleObject>'.
	created := MXSimpleObject fromXmlNode: soup simpleobject.
	self assert: created index equals: 1.
	self assert: created title equals: 'my title'.
	self assert: created token equals: 'my token type'.
	self assert: created abstract equals: 'My abstract'.