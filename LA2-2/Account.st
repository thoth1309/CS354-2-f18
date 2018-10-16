"Smalltalk port of Account.java"

Object subclass: Account [
    |number|
	|customer|
	|balance|

	"Constructor fot the Account class"
	Account class [
	    new[
		   account: num customer: cust balance: bal [ 
                number:=num.
				customer:=cust.
				balance:=bal
			]"
		    ^super new init"
		]
	]

    "(accrue: rate)"

	"Initialize variables"
	"init [
        number:=0.
		balance:=0.00
	]"

	balance [
        ^balance
	]

	deposit: amount [
        balance=balance+amount.
		^balance
	]

	withdraw: amount [
        balance:=balance-amount.
	    ^balance
	]

	asString [
	    |retVal| 
		retVal:=((number asString), ' : ', (customer asString), ' : ', (balance
		asString)).
		^retVal
	]
]
