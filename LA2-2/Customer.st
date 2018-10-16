"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
        new [
            ^super new init
		]
	]

	init [
	    name:=''
	]

	customer: custName [
        name:=custName
	]

	toString [
        name
	]
]
