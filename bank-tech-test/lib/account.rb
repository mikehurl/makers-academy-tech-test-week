class Account

  attr_reader :balance, :credit_transactions, :debit_transactions

  def initialize
    @balance = 0
    @credit_transactions = []
    @debit_transactions = []
  end

  def deposit(amount)
    @balance += amount
    @credit_transactions << [datestamp, amount]
  end

  def withdraw(amount)
    @balance -= amount
    @debit_transactions << [datestamp, amount]
  end

  private

  def datestamp
    Time.now.strftime "%d/%m/%Y"
  end

end
