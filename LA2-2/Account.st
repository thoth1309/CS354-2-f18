"Smalltalk port of Account.java"

Object subclass: Account [
    |number|
	|customer|
	|balance|

	"Constructor fot the Account class"
	Account class [
	    new[
		    ^super new init
		]
	]



	"Initialize variables"
	init [
        number:=0
		customer:=null
		balance:=0.00
	]

	balance: [
        ^balance
	]

	deposit: amount [
        ^balance=balance+amount
	]

	withdraw: amount [
        ^balance:=balance-amount
	]

	toString [
	    |retVal|
        retVal:=number+":"+customer+":"+balance
	]
]
