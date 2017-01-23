class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @transactions << [datestamp, @balance += amount]
  end

  def withdraw(amount)
    @transactions << [datestamp, @balance -= amount]
  end

private

  def datestamp
    Time.now.strftime "%d/%m/%Y"
  end

end
