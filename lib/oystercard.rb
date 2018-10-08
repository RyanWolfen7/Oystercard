# This is the main body for oystercard

class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
  end

   def add_money(money)
     @balance = money.to_i
   end
end
