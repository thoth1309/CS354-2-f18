"Creates an Account object class, which is a subclass of the generic Object.
Account is a port of the Java Account.java program, which provides some basic
functionality for any account type object, as well as an abstract method which
the child class will be forced to handle on its own"

"Author: Jason Egbert"

Object subclass: Account [
    |number|	"The number of the account"
	|customer|	"The customer who owns the account"
	|balance|	"The balance of the account"

	"Constructor fot the Account class"
	Account class [
	    new [
            ^super new
		]
	]

    "Returns the current balance of the account"
	balance [
        ^balance
	]

    "Increments the account balance by the amount deposited"
	deposit: amount [
        balance:=balance+amount.
	]

    "Decrements the account balance by the amount deposited"
	withdraw: amount [
        balance:=balance-amount.
	]

    "Creates the accrue method, and forces handling of the method upon the child
	classes"
	accrue: rate [
        ^self subclassResponsibility
	]

    "returns a string containing the current details of a given account."
	asString [
		^(number, ':', (customer asString), ':', (balance asString))
	]
]
