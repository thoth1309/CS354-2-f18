"Class which creates a Savings Account object, which is a child object of the
Account object. As a child of the Account object, it contains all of the same
functionality of an Account object, with a few added features that allow for the
accrual of interest. This program is a port of the Java language program
SavingsAccount.java to the Smalltalk language."

"Author: Jason Egbert"

Account subclass: SavingsAccount [
    |interest|	"Initial interst accrued on this particular account."

    "Constructor for the Savings Account class. Takes in an account number, a
	customer object, and an account balance, and passes them to the init
	function, which will initialize the object."
	SavingsAccount class [
        new: num customer: cust balance: bal [
            ^super new init: num customer: cust balance: bal
		]
	]

    "Initializes the Savings Account object, providing account number, customer
	object, and account balance to the object, as well as setting the current
	interest to 0."
	init: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal.
		interest:=0
	]

    "Accrue method for the Savings account object. Accrues interest according
	to the interest rate passed in by the user."
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
