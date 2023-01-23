class Bank 
  def printing_statement(date,credit=null,debit,balanec)
    return "date || credit || debit || balance \n 09/01/2023 || #{@amount}|| || 0.00"
  end

  def deposit(amount)
    @amount = amount
  end
end

bank = Bank.new
puts bank.printing_statement("09/01/2023",0,0,0)

