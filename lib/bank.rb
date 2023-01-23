class Bank
  def initialize()
    @balance = '%.2f' % 0
  end

  def printing_statement(date,credit,debit,balance)
    puts "balance1:#{@balance}"
    return "date || credit || debit || balance \n 09/01/2023 || #{@amount}|| || #{@balance}"
   
  end

  def deposit(amount)
    @amount = '%.2f' % amount
    puts @amount 
    puts "balance2:#{@balance}"
    
    @balance = @amount.to_i + @balance.to_i
    @balance = '%.2f' % @balance
    puts "balance3:#{@balance}"
  end
end

bank = Bank.new
bank.deposit(1000)
puts bank.printing_statement("09/01/2023",0,0,0)

