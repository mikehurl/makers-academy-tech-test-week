require 'account'

describe Account do

  before do
    @account = Account.new
  end

  let!(:time) {Time.new(2017, 01, 23)}

  it 'starts with a balance of zero' do
    expect(@account.balance).to eq 0
  end

  describe '#deposit' do

    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'can increase the balance' do
      expect{ @account.deposit(500) }.to change{ @account.balance }.by 500
    end

    it 'date-stamps the deposit transaction' do
      expect(@account.deposit(500)).to eq [{"deposit"=>["23/01/2017", 500]}]
    end

  end

    describe '#withdraw' do

      it { is_expected.to respond_to(:withdraw).with(1).argument }

      it 'can reduce the balance' do
        expect{ @account.withdraw(500) }.to change{ @account.balance }.by -500
      end

      it 'date-stamps the withdraw transaction' do
        expect(@account.withdraw(500)).to eq [{"withdraw"=>["23/01/2017", 500]}]
      end

    end

end
