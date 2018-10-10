# This is the main body for oystercard
require_relative 'journey'

class Oystercard

  attr_reader :balance

  DEFAULT_LIMIT = 90
  DEFAULT_MIN_TO_RIDE = 1
  DEFAULT_INIT_BALANCE = 0
  DEFAULT_PENALTY = 5

  def initialize
    @balance = DEFAULT_INIT_BALANCE
    @journey = Journey.new
  end

  def add_money(money)
    raise 'Max Limit' if max_limit?
    @balance += money.to_i
  end

  def touch_in(station)
    raise "You dont have enough" if min_to_ride?
    penalty if in_journey?
    @journey.touch_in(station)

  end

  def touch_out(station)
    deduct_money(1)
    @journey.touch_out(station)
  end

  def in_journey?
    @journey.entry_station == nil ? false : true
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

  def penalty
    @journey.touch_out("Incomplete")
    @balance -= DEFAULT_PENALTY
  end

end
