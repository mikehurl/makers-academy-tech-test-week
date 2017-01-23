class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    deposits = []
    date = Time.now.strftime "%d/%m/%Y"
    deposits << date
    deposits << @balance += amount
    @transactions << deposits
  end

  def withdraw(amount)
    withdrawals = []
    date = Time.now.strftime "%d/%m/%Y"
    withdrawals << date
    withdrawals << @balance -= amount
    @transactions << withdrawals
  end

end
