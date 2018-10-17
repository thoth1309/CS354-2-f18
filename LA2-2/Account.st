"Smalltalk port of Account.java"

Object subclass: Account [
    |number|
	|customer|
	|balance|

	"Constructor fot the Account class"
	Account class [
	    new[
            ^super new init
			"init: num customer: cust balance: bal [
                number:=num.
				customer:=cust.
				balance:=bal
			]"

		    "account: num customer: cust balance: bal [ 
                number:=num.
				customer:=cust.
				balance:=bal
			]"
		    "^super new init"
		]
	]

    newAccount: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]

"
    account: num customer: cust balance: bal [ 
                number:=num.
				customer:=cust.
				balance:=bal
	]"
    "(accrue: rate)"

	"Initialize variables"
"	init: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]"

	balance [
        ^balance
	]

	deposit: amount [
        balance:=balance+amount.
		^balance
	]

	withdraw: amount [
        balance:=balance-amount.
	    ^balance
	]

	accrue: rate [
        ^self subclassResponsibility
	]

	asString [
	    |retVal| 
		retVal:=((number asString), ' : ', (customer asString), ' : ', (balance
		asString)).
		^retVal
	]
]
