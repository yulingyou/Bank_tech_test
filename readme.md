Installation
Clone the repo
Run rspec to test

Requirements
- You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).


Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

Result 

```
 => #<Bank:0x0000000153351ea8 @balance="0.00", @bank_statement=[]> 
 => "date || credit || debit || balance \n 09/01/2023 ||  ||  || 0.00" 
3.0.0 :004 > bank.deposit("09/01/2023",1000)
 => "1000.00" 
3.0.0 :005 > bank.bank_statement("09/01/2023",1000,0,0)
 => "date || credit || debit || balance \n 09/01/2023 || 1000.00 ||  || 1000.00" 
3.0.0 :006 > bank.deposit("09/01/2023",1000)
 => "2000.00" 
3.0.0 :007 > bank.bank_statement("09/01/2023",1000,0,0)
 => "date || credit || debit || balance \n 09/01/2023 || 1000.00 ||  || 2000.00" 
3.0.0 :008 > bank.withdrawal("09/01/2023",500)
 => "1500.00" 
3.0.0 :009 > bank.bank_statement("09/01/2023",0,500,0)
 => "date || credit || debit || balance \n 09/01/2023 ||  || 500.00 || 1500.00" 
3.0.0 :010 > 
```