require 'bank'

RSpec.describe Bank do
  it "should printing statement with default value" do
  bank = Bank.new
  result = bank.bank_statement("09/01/2023",0,0,0)
  expect(result).to eq("date || credit || debit || balance \n 09/01/2023 ||  ||  || 0.00")
  end

  it "should printing statement with credit 1000 after deposit 1000" do
  bank = Bank.new
  bank.deposit(1000)
  result = bank.bank_statement("09/01/2023",1000,0,0)
  expect(result).to eq("date || credit || debit || balance \n 09/01/2023 || 1000.00 ||  || 1000.00")
  end

  it "should printing currect balance 2000 after deposit 1000 again" do
  bank = Bank.new
  bank.deposit(1000)
  bank.deposit(1000)
  result = bank.bank_statement("09/01/2023",1000,0,0)
  expect(result).to eq("date || credit || debit || balance \n 09/01/2023 || 1000.00 ||  || 2000.00")
  end

  it "should printing currect balance 2500 after withdrawal 500 from balance 3000" do
    bank = Bank.new
    bank.deposit(1000)
    bank.deposit(2000)
    bank.withdrawal(500)
    result = bank.bank_statement("09/01/2023",0,500,0)
    expect(result).to eq("date || credit || debit || balance \n 09/01/2023 ||  || 500.00 || 2500.00")
    end
end


