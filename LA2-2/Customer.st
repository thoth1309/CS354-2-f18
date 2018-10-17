"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
      
		newCustomer: custName [
            name:=custName
		]
		"new [
            ^super new init
		]"
		"customer: custName [
		    name:=custName
            ^super new init
		]"
	]

    "newCustomer: custName [
        name:=custName
	]"

	asString [
        ^name
	]
]
