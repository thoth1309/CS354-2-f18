"Class which creates a new Customer object representing the basic identity
(i.e., the name) of a customer. This is a port of the Java language
Customer.java to the Smalltalk language."

"Author: Jason Egbert"

Object subclass: Customer [
    |name|	"The name of the Customer"

    "Constructor for the Customer class. Initializes a new customer object
	taking in the customer's name, and passing it to the init method."
	Customer class [
		new: custName [
            ^super new init: custName
		]
	]

    "Initialize method for the Customer object. Takes in the customer's name,
	and stores it in the 'name' variable."
    init: custName [
        name:=custName
	]

    "Returns the string stored in the 'name' variable. i.e., the customer's
	name."
	asString [
        ^name
	]
]

"Unit testing code for the Customer Class"
"
|customer| customer:=Customer new:'Ann'.
(customer) printNl.
(customer asString) printNl
"
