require 'bank'

RSpec.describe Bank do
  it "should printing statement with default value" do
  bank = Bank.new
  result = bank.printing_statement("09/01/2023",0,0,0)
  expect(result).to eq("date || credit || debit || balance \n 09/01/2023 || || || 0.00")
  end

  it "should printing statement with credit 1000 after deposit 1000" do
    bank = Bank.new
    bank.deposit(1000)
    result = bank.printing_statement("09/01/2023",1000,0,0)
    expect(result).to eq("date || credit || debit || balance \n 09/01/2023 || 1000|| || 0.00")
    end
end

