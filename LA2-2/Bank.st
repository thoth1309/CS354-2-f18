"Bank class"

Object subclass: Bank [
    |accounts|
	|i|

	"new constructor for Bank class"
	Bank class [
        new [
            ^super new init
		]
	]

	init [
          i:=0.
		  accounts:=#()
	]

	add: account [
            accounts:=accounts at: i put: account.
			i:=i+1
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
|customer| customer:=(Customer customer: 'Ann') new.
|checkingaccount| checking:=CheckingAccount (checkingAccount: '01001' customer:
customer balance: 100.00) new.
|savingsAccount| savings:=SavingsAccount (savingsAccount: '01002' customer:
customer balance: 200.00) new.
add: checkingaccount.
add: savingsAccount.
accrue: 0.02.
asString printN1
