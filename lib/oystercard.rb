# This is the main body for oystercard

class Oystercard

  attr_reader :balance, :entry_station

  DEFAULT_LIMIT = 90
  DEFAULT_MIN_TO_RIDE = 1
  DEFAULT_INIT_BALANCE = 0

  def initialize
    @balance = DEFAULT_INIT_BALANCE
  end

  def add_money(money)
    raise 'Max Limit' if max_limit?
    @balance += money.to_i
  end

  def touch_in(station)
    raise "You dont have enough" if min_to_ride?
    @entry_station = station

  end

  def touch_out
    deduct_money(1)
    @entry_station = nil
  end

  def in_journey?
    @entry_station != nil
  end

  private

  def min_to_ride?
    @balance < DEFAULT_MIN_TO_RIDE
  end

  def max_limit?
    @balance >= DEFAULT_LIMIT
  end

  def deduct_money(money)
    @balance -= money
  end
end
