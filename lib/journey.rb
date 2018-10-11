# this class tracks a journey
require_relative 'journey_log'

class Journey

  attr_reader :entry_station, :log

  def initialize
    @entry_station = nil
    @log = JourneyLog.new
  end

  def touch_in(station)
    @entry_station = station
  end

  def touch_out(station)
    @log.log_history(@entry_station, station)
    @entry_station = nil
  end
end
