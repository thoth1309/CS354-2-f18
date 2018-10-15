"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
        new [
            ^super new init
		]
	]

	init [
	    ^name:=''
	]

	customer: name [
        ^name:=name
	]

	toString [
        name
	]
]
