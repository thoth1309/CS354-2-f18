"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
        customer: custName [
		    name:=custName.
            "^super new init"
		]
	]

"	init [
	    name:=''
	]

	customer: custName [
        name:=custName
	]"

	toString [
        name
	]
]
