testing-empty
testEmptyStringAtBeginningOfLine
	| matcher |
	matcher := self matcherClass forString: '^'.
	self
		assert: (matcher copy: 'foo1 bar1' , String cr , 'foo2 bar2' replacingMatchesWith: '*')
			= ('*foo1 bar1' , String cr , '*foo2 bar2')
		description: 'An empty string at the beginning of a line'