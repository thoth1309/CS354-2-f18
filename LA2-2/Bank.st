"Class creates a Bank object to store account information. Port of Bank.java to
Smalltalk programming language."

"Author: Jason Egbert"

Object subclass: Bank [
    |accounts|	"the list of accounts at the bank"
	|index|		"the position of the next index in the bank array"

	"new constructor for Bank class"
	Bank class [
		new [
            ^super new init
		]
	]

    "Initialization function for the bank, sets accounts to an array of size 5,
	and index to 1, or the first element in the array"
	init [
          index:=1.
		  accounts:= Array new: 5
	]

    "Adds a new account to the accounts array at the current index, and then
	increments the current index to the next available place."
	add: account [
            accounts at: index put: account.
			index:=index+1
	]

    "Runs through all of the accounts in the bank and accrues interest at each
	using its own accrue method"
	accrue: rate [
            accounts do: [ :account | 
			    account ~= nil
				    ifTrue: [ account accrue: rate ]
			]
	]

    "Prints the asString for each of the accounts in the Bank to the screen"
	print [
	    accounts do: [ :account | 
		    account ~= nil
	 	        ifTrue: [(account asString) printNl]
		]
	]
]

"These statements execute the program, and print results to the console for the
user, for a customer  named 'Ann' who has 100 dollars in her checking account,
200.00 in her savings account, and an account interest rate of 0.02%"
|bank| bank:=Bank new.	"Creates a new bank"
bank init.	"Initialization of the bank"
|customer| customer:=Customer new: 'Ann'. "Creates Customer Ann"
"testing the creation of the new customer"
"(customer asString) printNl."
"Creates Ann's Checking Account at bank, with 100.00 in the account"
|checking| checking:=CheckingAccount new:'01001' customer: customer balance: 100.00.
"testing the creation of the checking account"
"(checking asString) printNl."
bank add: checking.	"adds checking account to bank"
"testing the addition of the checking account"
"bank print."
"Creates Ann's Savings account at bank, with 200.00 in the account"
|savings| savings:=SavingsAccount new: '01002' customer: customer balance: 200.00.
"testing the creation of the savings account"
"(savings asString) printNl."
bank add: savings.	"adds savings account to bank"
"testing the addition of the savings account"
"bank print."
bank accrue: 0.02.	"Accrues 0.02% interest at the bank"
bank print	"prints the final output"
