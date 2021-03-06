tests
testCallSimple
	| result |
	
	result := self builder build: [ :builder |	
		builder 
			signature: #( void method1 ( int var1 ) );
			sender: (FFICalloutMethodBuilderTestContext new
				selector: #method1:;
				argumentNames: #('var1');
				methodClass: Object;
				yourself )].
	
	self assert: result notNil.
	self assert: result isCompiledMethod.
	self assert: result primitive = 0.
	self assert: result literals first name = 'method1'.
	self assert: result literals first argTypes = { ExternalType void. ExternalType long }