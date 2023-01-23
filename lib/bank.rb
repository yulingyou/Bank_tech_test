class Bank
  def initialize()
    @balance = '%.2f' % 0
    @bank_statement = []
  end

  def printing_statement(date,credit,debit,balance)
    return header +  " 09/01/2023 || #{@credit} || #{@debit} || #{@balance}"
  end

  def header
    return "date || credit || debit || balance \n"
  end


  def deposit(credit)
    @credit = '%.2f' % credit
    
    @balance = @credit.to_i + @balance.to_i
    @balance = '%.2f' % @balance
  end

  def withdrawal(debit)
    @credit = nil
    @debit = '%.2f' % debit
    @balance = @balance.to_i - @debit.to_i
    @balance = '%.2f' % @balance
  end
end

bank = Bank.new
bank.deposit(1000)
bank.deposit(2000)
bank.withdrawal(500)
puts bank.printing_statement("09/01/2023",0,0,0)

