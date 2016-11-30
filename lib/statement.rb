require_relative 'account'

class Statement

  def initialize
    @transaction_summary = []
  end

  def record_transaction(t_amount, new_balance, t_date)
    if t_amount < 0
      transaction = {date: t_date, credit: "", debit: -t_amount, balance: new_balance}
    else
      transaction = {date: t_date, credit: t_amount, debit: "", balance: new_balance}
    end
    @transaction_summary.push(transaction)
  end

  def print_statement
    puts @transaction_summary
  end

end
