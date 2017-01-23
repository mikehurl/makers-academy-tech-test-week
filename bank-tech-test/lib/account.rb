class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @transactions << @balance += amount
    date = Time.now.strftime "%d/%m/%Y"
    @transactions << date
  end

  def withdraw(amount)
    @balance -= amount
  end

end
