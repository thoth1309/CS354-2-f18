"Customer class"

Object subclass: Customer [
    |name|

	Customer class [
      
		newCustomer: custName [
            name:=custName
		]
	]


	asString [
        ^name
	]
]

"testing code"
"
|customer| customer:=Customer newCustomer:'Ann'.
(customer) printNl
"
