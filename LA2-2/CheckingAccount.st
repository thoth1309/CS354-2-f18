"checking account class"

Account subclass: CheckingAccount [
    "|number balance customer|"
	
	CheckingAccount class [
        new: num customer: cust balance: bal [
            ^super new init: num customer:cust balance: bal
		]
	]

	init: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]

	accrue: rate []
]

|account| account:=CheckingAccount new:'01001' customer: 'ann' balance:100.00.
(account asString) printNl.
account accrue: 0.2.
(account asString) printNl.
|cust| cust:=Customer new:'Anne'.
(cust asString) printNl.
|account2| account2:=CheckingAccount new:'01003' customer: cust asString balance: 200.00.
(account2 asString) printNl.
account2 accrue: 0.3.
(account2 asString) printNl
