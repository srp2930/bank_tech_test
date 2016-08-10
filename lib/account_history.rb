class AccountHistory

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def record_debit(value, balance)
    @transactions << { date: Date.today.to_s, credit: "", debit: value, balance: balance }
  end

  def record_withdrawl(value, balance)
    @transactions << { date: Date.today.to_s, credit: value, debit: "", balance: balance }
  end
  

end
