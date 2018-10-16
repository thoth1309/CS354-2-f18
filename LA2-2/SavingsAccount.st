"Savings Account Class"

Account subclass: SavingsAccount [
    |interest|

	SavingsAccount class: number customer: customer balance: balance [
        savingsAccount: num customer: cust balance: bal [
            ^super new init
		]
	]

"	init [
        interest:=0.00
	]

	SavingsAccount: number customer: customer balance: balance [
        ^number:=number.
		^customer:=customer.
		^balance:=balance
	]"

	accrue: rate [
        ^balance+=balance*rate.
		^interest+=balance*rate
	]
]
