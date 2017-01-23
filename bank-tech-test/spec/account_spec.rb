require 'account'

describe Account do

  before do
    @account = Account.new
  end

  it 'starts with a balance of zero' do
    expect(@account.balance).to eq 0
  end

  describe '#deposit' do

    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'can increase the balance' do
      expect{ @account.deposit(500) }.to change{ @account.balance }.by 500
    end

  end

  describe '#withdrawal' do

    it { is_expected.to respond_to(:withdrawal).with(1).argument }

    it 'can reduce the balance' do
      expect{ @account.withdrawal(500) }.to change{ @account.balance }.by -500

    end

  end

end
