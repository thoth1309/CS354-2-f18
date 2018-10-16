"Savings Account Class"

Object subclass: SavingsAccount [
    |interest|

	SavingsAccount class [
        new [
            ^super new init
		]
	]

	init [
        interest:=0.00
	]

	SavingsAccount: number customer: customer balance: balance [
        ^number:=number.
		^customer:=customer.
		^balance:=balance
	]

	accrue: rate [
        ^balance+=balance*rate.
		^interest+=balance*rate
	]
]
