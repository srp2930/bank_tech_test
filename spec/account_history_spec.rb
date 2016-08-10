require 'account_history'

describe AccountHistory do
  let(:account_history) { described_class.new }
  let(:balance) { double :balance }

  it 'should initialize with an empty transaction history' do
    expect(account_history.transactions).to be_empty
  end

  describe '#record_debit' do
    let(:first_deposit) { {date: Date.today.to_s, credit: "", debit: 10, balance: balance} }
    it 'should correctly record debit details' do
      account_history.record_debit(10, balance)
      expect(account_history.transactions).to include first_deposit
    end
  end

  describe '#record_withdrawl' do
    let(:new_balance) { double :new_balance }
    let(:first_withdrawl) { {date: Date.today.to_s, credit: 5, debit: "", balance: new_balance} }
    it 'should correctly record withdrawl details' do
      account_history.record_withdrawl(5, new_balance)
      expect(account_history.transactions).to include first_withdrawl
    end
  end

end
