"Smalltalk port of Account.java"

Object subclass: Account [
    |number|
	|customer|
	|balance|

	"Constructor fot the Account class"
	Account class [
	    new [
            ^super new
		]
		"new: num customer: cust balance: bal [
		    ^super new init: num customer: cust balance: bal
	    ]"
	]

	"init: num balance: bal customer: cust [
        number:=num.
		balance:=bal.
		customer:=cust
	]"

	balance [
        ^balance
	]

	deposit: amount [
        balance:=balance+amount.
	]

	withdraw: amount [
        balance:=balance-amount.
	]

	accrue: rate [
        ^self subclassResponsibility
	]

	asString [
		^(number, ' : ', (customer asString), ' : ', (balance asString))
	]
]
