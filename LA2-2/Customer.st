"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
		new: custName [
            ^super new init: custName
		]
"		newCustomer: custName [
            name:=custName
		]"
	]

    init: custName [
        name:=custName
	]

	asString [
        ^name
	]
]

"testing code"
"
|customer| customer:=Customer new:'Ann'.
(customer) printNl.
(customer asString) printNl
"
