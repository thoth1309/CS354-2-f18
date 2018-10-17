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
		  accounts:= Array new: 2
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
		accounts do: [ :account | r:=r, (account asString), '\n' ].
		^r
	]
]

|bank| bank:=Bank new.
bank init.
|customer| customer:=Customer new: 'Ann'.
"testing"
"(customer asString) printNl."
|checking| checking:=CheckingAccount new:'01001' customer: customer balance: 100.00.
"testing"
"(checking asString) printNl."
bank add: checking.
"testing"
"(bank asString) printNl."
|savings| savings:=SavingsAccount new: '01002' customer: customer balance: 200.00.
"testing"
"(savings asString) printNl."
bank add: savings.
"testing"
"(bank asString) printNl."
bank accrue: 0.02.
bank asString printNl
