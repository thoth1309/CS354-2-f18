"checking account class"

Account subclass: CheckingAccount [
    
	CheckingAccount class [
        new [
		    ^super new init
			": num customer: cust balance: bal"
		]	
		"new [
            ^super new init
		]"
        "checkingAccount: num customer: cust balance: bal [
            ^super new account: num customer: cust balance: bal
		]"
	]

	newChecking: num customer:cust balance:bal [
        super newAccount: num customer:cust balance:bal
	]

	"newAccount: num customer: cust bal: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]"

	accrue: rate []
]
