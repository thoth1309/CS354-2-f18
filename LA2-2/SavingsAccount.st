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

"testing"
|acount| account:= SavingsAccount new:'01002' customer:'anne' balance: 200.0.
(account asString) printNl.
account accrue: 0.2.
(account asString) printNl
