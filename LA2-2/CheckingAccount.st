"checking account class"

Account subclass: CheckingAccount [
    
	CheckingAccount class [
        CheckingAccound: num customer: cust balance: bal [
            ^super new init: num customer: cust balance: bal
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
