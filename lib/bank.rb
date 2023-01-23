class Bank
  def initialize()
    @balance = '%.2f' % 0
  end

  def printing_statement(date,credit,debit,balance)
    puts "balance1:#{@balance}"
    return "date || credit || debit || balance \n 09/01/2023 || #{@credit} || #{@debit} || #{@balance}"
   
  end

  def deposit(credit)
    @credit = '%.2f' % credit
    puts @credit 
    puts "balance2:#{@balance}"
    
    @balance = @credit.to_i + @balance.to_i
    @balance = '%.2f' % @balance
    puts "balance3:#{@balance}"
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
puts bank.printing_statement("09/01/2023",0,0,0)

