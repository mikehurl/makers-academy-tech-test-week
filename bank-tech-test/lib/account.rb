class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {"deposit" => [datestamp, amount]}
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << {"withdraw" => [datestamp, amount]}
  end

  private

  def datestamp
    Time.now.strftime "%d/%m/%Y"
  end

end
