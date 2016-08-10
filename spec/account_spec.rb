require 'account'

describe Account do
  let(:account) { described_class.new(statement) }
  let(:statement) {double :account_history_class, record_debit: nil, record_withdrawl: nil }


  it 'should intialize with a 0 balance' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'should allow the user to increase their balance' do
      expect(statement).to receive(:record_debit).with(10, 10)
      account.deposit(10)
      expect(account.balance).to eq 10
    end
  end

  describe '#withdrawl' do
    it 'should allow the user to take out funds' do
      expect(statement).to receive(:record_withdrawl).with(5, 5)
      account.deposit(10)
      account.withdrawl(5)
      expect(account.balance).to eq 5
    end
  end

end
