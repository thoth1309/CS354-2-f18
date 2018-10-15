"checking account class"

Object subclass: CheckingAccount [

	CheckingAccount class [
        new [
            ^super new init
		]
	]

	init [
	]

	CheckingAccount: number customer balance [
        ^number:=number.
		^customer:=customer.
		^balance:=balance.
	]

	accrue: rate [
	    ^self subclassResponsibility
	]
]
