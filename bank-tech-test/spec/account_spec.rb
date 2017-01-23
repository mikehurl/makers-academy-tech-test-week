require 'account'

describe Account do

  before do
    @account = Account.new
  end

  it "starts with a balance of zero" do
    expect(@account.balance).to eq 0
  end

end
