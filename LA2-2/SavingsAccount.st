"Savings Account Class"

Account subclass: SavingsAccount [
    |interest|

	SavingsAccount class [
        savingsAccount: num customer: cust balance: bal [
            ^super new account: num customer: cust balance: bal
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
        balance+=balance*rate.
		interest+=balance*rate
	]
]
