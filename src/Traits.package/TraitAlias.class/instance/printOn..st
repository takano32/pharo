printing
printOn: aStream
	super printOn: aStream.
	aStream
		space;
		nextPut: $@;
		space;
		nextPut: ${.
	self aliases do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: '. '].
	aStream nextPut: $}