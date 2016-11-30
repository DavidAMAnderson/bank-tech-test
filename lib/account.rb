require_relative 'statement'

class Account

  attr_reader :balance

  def initialize (statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.record_transaction(amount, @balance, Time.now.strftime("%d/%m/%Y"))
  end

  def withdraw(amount)
    fail "Insufficient balance" if balance < amount
    @balance -= amount
    @statement.record_transaction(-amount, @balance, Time.now.strftime("%d/%m/%Y"))
  end

  def print_statement
    @statement.print_statement
  end

end
