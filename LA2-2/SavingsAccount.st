"Savings Account Class"

Account subclass: SavingsAccount [
    |interest|

	SavingsAccount class [
        new [
            ^super new init
			": num customer: cust balance: bal"
		]
		
		"new [
            ^super new init
		]"
		"savingsAccount: num customer: cust balance: bal [
            ^super new account: num customer: cust balance: bal
		]"
	]

	newSavings: num customer: cust balance: bal [
        super newAccount: num customer: cust balance: bal
	]

"	init [
        interest:=0.00
	]"

	"newAccount: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]"

	accrue: rate [
	    |bal|bal:=balance.
        balance:=bal*rate.
		interest:=balance*rate
	]
]
