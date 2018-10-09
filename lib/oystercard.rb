# This is the main body for oystercard

class Oystercard

  attr_reader :balance, :touch_in, :touch_out

  DEFAULT_LIMIT = 90

  def initialize
    @balance = 0
  end

  def add_money(money)
    raise 'Max Limit' if max_limit?
    @balance = money.to_i
  end

  def deduct_money(money)
    @balance - money
  end

  def in_journy?
    false
  end

  private

  def max_limit?
    @balance >= DEFAULT_LIMIT
  end
end
