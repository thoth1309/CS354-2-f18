"checking account class"

Account subclass: CheckingAccount [
    
	CheckingAccount class [
        checkingAccount: num customer: cust balance: bal [
            ^super new account: num customer: cust balance: bal
		]
	]

"	CheckingAccount: number customer: customer balance: balance [
        number:=number.
		customer:=customer.
		balance:=balance
	]"

	accrue: rate [
	    ^self subclassResponsibility
	]
]
