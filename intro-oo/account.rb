require 'pry'

class Account
  attr_reader :user_id, :vip
  attr_accessor :balance
  @@count = 0
  @@all = []
  
  def initialize(user_id, balance=100, vip=false)
    @user_id = user_id
    @balance = balance
    @vip = vip
    @@count += 1
    @@all << self
  end

  def self.count
    # Tell me how many bank accounts there are
    @@count
  end

  def self.all
    @@all
  end

  def count
    p self
    "the count of my monies is #{self.balance}"
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

  def self.vip_report
    # List info of all accounts that are vip
    # Get all vip accounts
    # Iterate and get info from each to print to screen
    vips = self.all.select { |account| account.vip == true }
    vips.each do |vip_acct|
      puts vip_acct.info
    end
  end

  def deposit(amount)
    @balance = self.balance + amount
  end

  def withdraw(amount)
    if amount > balance
      puts "Ah ah ah! No way buddy."
      return
    end

    self.balance = balance - amount
  end
  
  def info
    if self.vip
      is_vip = "YES!!"
    else
      is_vip = "NOT YET!"
    end

    "I have the id #{self.user_id} and a balance of #{self.balance}. Am I a VIP? #{is_vip}"
  end
end

acct = Account.new(42)
acct_two = Account.new(4, 50, true)
acct_three = Account.new(52, 750, true)

Account.vip_report

# binding.pry
0