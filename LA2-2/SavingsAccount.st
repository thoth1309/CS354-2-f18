"Savings Account Class"

Account subclass: SavingsAccount [
    "|interest number customer balance|"
    |interest|

	SavingsAccount class [
        new: num customer: cust balance: bal [
            ^super new init: num customer: cust balance: bal
		]
	]

	init: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal.
		interest:=0
	]


	accrue: rate [
        balance:=balance+(balance*rate).
		interest:=interest+(balance*rate)
	]
]

"unit testing for Savings Account"
"
|acount| account:= SavingsAccount new:'01002' customer:'anne' balance: 200.0.
(account asString) printNl.
account accrue: 0.2.
(account asString) printNl.
|cust| cust:=Customer new:'Annie'.
(cust asString) printNl.
|account2| account2:=SavingsAccount new:'01004' customer: cust balance: 401.00.
(account asString) printNl.
account accrue: 0.3.
(account asString) printNl
"
