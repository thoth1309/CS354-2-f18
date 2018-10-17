"Creates a checking account class to represent a checking account object. The
checking acount is a child class of the account class, and as such has all of
the functionality of an account. As a checking account, the accrue method does
nothing, because checking accounts do not accrue interest. This is a port of
the CheckingAccount.java program from Java to Smalltalk."

"Author: Jason Egbert"

Account subclass: CheckingAccount [

    "Constructor class for a new Checking account. Takes in an account number, a
	customer object, and an account balance and uses them to initialize
	variables of the same names."
	CheckingAccount class [
        new: num customer: cust balance: bal [
            ^super new init: num customer:cust balance: bal
		]
	]

    "Initilization method for CheckingAccount object. Takes in an account
	number, customer object, and account balance to initialize the corresponding
	variables."
	init: num customer: cust balance: bal [
        number:=num.
		customer:=cust.
		balance:=bal
	]

    "Accrue method for checking account. As checking accounts do not accrue
	interest, the method does nothing and returns nothing."
	accrue: rate []
]

"unit tests for Checking Account"
"
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
"
