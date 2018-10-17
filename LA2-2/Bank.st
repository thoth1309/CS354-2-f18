"Bank class"

Object subclass: Bank [
    |accounts|
	|index|

	"new constructor for Bank class"
	Bank class [
        "bank [
		  init
		  accounts:=#()
		]"
		new [
            ^super new init
		]
	]

	init [
          index:=1.
		  accounts:= Array new: 5
	]

	add: account [
            accounts at: index put: account.":=accounts+account.accounts at: index put: account."
			index:=index+1
	]

	accrue: rate [
            accounts do: [ :account | account accrue: rate ]
	]

	asString [
        |r| r:=''.
		accounts do: [ :account | r:=r, (account asString account), '\n' ].
		^r
	]
]

|bank| bank:=Bank new.
bank init.
|customer| customer:=Customer newCustomer: 'Ann'.
|checking| checking:=CheckingAccount new.
(checking newChecking:'01001' customer: customer balance: 100.00).
bank add: checking.
|savings| savings:=SavingsAccount new.
(savings newSavings:'01002' customer: customer balance: 200.00).
bank add: savings.
bank accrue: 0.02.
asString printNl
