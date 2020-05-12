require 'pry'

class Account
  attr_reader :user_id
  attr_accessor :balance
  
  def initialize(user_id, balance=100)
    @user_id = user_id
    @balance = balance
  end
  # EXACT SAME as lines 4 and 5 above, ZERO meaningful diffs between the two
  # def balance
  #   @balance
  # end

  # def balance=(new_balance)
  #   @balance = new_balance
  # end

  # def user_id
  #   @user_id
  # end

  def deposit(amount)
    self.balance = self.balance + amount
  end

  def withdraw(amount)
    if amount > balance
      puts "Ah ah ah! No way buddy."
      return
    end

    self.balance = balance - amount
  end
  
  def info
    "I have the id #{self.user_id} and a balance of #{self.balance}"
  end
end

acct = Account.new(42)

puts acct.info

binding.pry
0