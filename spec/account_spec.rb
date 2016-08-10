require 'account'

describe Account do
  let (:account) { described_class.new }

  it 'should intialize with a 0 balance' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'should allow the user to increase their balance' do
      account.deposit(10)
      expect(account.balance).to eq 10
    end
  end

  describe '#withdrawl' do
    it 'should allow the user to take out funds' do
      account.deposit(10)
      account.withdrawl(5)
      expect(account.balance).to eq 5
    end
  end

end
