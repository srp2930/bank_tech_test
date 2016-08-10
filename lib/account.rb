require 'account_history'

class Account

  attr_reader :balance

  def initialize(statement=AccountHistory.new)
    @balance = 0
    @statement = statement
  end

  def deposit(funds)
    @balance += funds
    @statement.record_debit(funds, balance)
  end

  def withdrawl(money)
    @balance -= money
    @statement.record_withdrawl(money, balance)
  end

end
