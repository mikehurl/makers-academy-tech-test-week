# Bank tech test

A practice tech test introduced during week 10 of the Makers Academy Course. Designed to practice object-oriented design and test-driven development skills as individuals rather than in pairs as is standard throughout the rest of the course.

### Specification

- Users should be able to interact with the code via a REPL
- Deposits and withdrawals should be implemented
- Statements containing a record of dates, deposits, withdrawals and balances should be available
- Relevant data is stored in memory rather than a database

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012, a deposit of 2000 on 13-01-2012 and a withdrawal of 500 on 14-01-2012; when they prints their bank statement they would see:
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### Architectural approach to the project
Test-driven development using RSpec for testing and Ruby for coding.

### How to download the code
`git clone https://github.com/mikehurl/makers-academy-tech-test-week.git`

### How to run the code
- `cd makers-academy-test-tech-week/bank-tech-test`
- `bundle`
- `pry` or `irb`
- `require './lib/account'`
- `account = Account.new`
- Then you can call `account.deposit(amount)`, `account.withdraw(amount)` and `account.print_statement`

### Areas for improvement
The code should be refactored into three or four classes in total in order to utilise single responsibility properly.

### User stories I generated from the specification and acceptance criteria

```
As an earner
So I can keep my money safe
I would like to be able to make a deposit

As a spender
So I can waste money on frivolous items
I would like to be able to make a withdrawal

As a bank account holder
So I can remember when I made a deposit or withdrawal
I would like my transactions to be date-stamped

As a bank account holder
So I can know how much money I have in my account
I would like to be able to know my balance

As a conscientious saver and spender
So I can have an accurate record of my transactions
I would like to be able to print a statement
```
