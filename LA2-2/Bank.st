"Bank class"

Object subclass: Bank [
    |accounts|

	"new constructor for Bank class"
	Bank class [
        new [
            ^super new init
		]
	]

	init [
        accounts:=''
	]

	add: account [
        accounts:=accounts+account
	]

	accrue: rate [
        accounts do: [ :account | (accrue: rate) ].
	]

	toString [
        |r| r:=''.
		accounts do: [ :account | r:=r, (toString account), '\n' ].
		r
	]
]

	|bank| bank:=Bank new.
	|customer| customer:=Customer:'Ann' new.
	add: (CheckingAccount '01001' customer 100.00) new.
	add: (SavingsAccount '01002' customer 200.00) new.
	accrue: 0.02.
	toString printN1
