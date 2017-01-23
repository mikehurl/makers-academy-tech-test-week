class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << [datestamp, amount]
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << [datestamp, amount]
  end

  def print_statement

  end

private

  def datestamp
    Time.now.strftime "%d/%m/%Y"
  end

end
