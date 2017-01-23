class Account

  attr_reader :balance, :transactions, :transaction_log

  def initialize
    @balance = 0
    @transactions = []
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history << "#{datestamp} || #{amount.to_s}.00||         || #{@balance}.00\n"
    @transactions << [datestamp, amount]
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history << "#{datestamp} ||        || #{amount.to_s}.00  || #{@balance}.00\n"
    @transactions << [datestamp, amount]
  end

  def print_statement
    title_row = "date       || credit || debit   || balance\n"
    title_row + transaction_log.join("").strip
  end

  def transaction_log
    @transaction_history.reverse!
  end

  private

  def datestamp
    Time.now.strftime "%d/%m/%Y"
  end

end
