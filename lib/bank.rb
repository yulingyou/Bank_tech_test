class Bank
  def initialize()
    @balance = '%.2f' % 0
    @bank_statement = []
  end

  def bank_statement(date,credit,debit,balance)
    @bank_statement.push(date,credit,debit,balance)
    @date = date
    return header +  " #{@date} || #{@credit} || #{@debit} || #{@balance}"
  end

  def printing_bank_statement(bank_statement)
    @bank_statement = bank_statement
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
puts bank.bank_statement("09/01/2023",0,0,0)
bank_statement = "09/01/2023",0,0,0
puts bank.printing_bank_statement(bank_statement)

