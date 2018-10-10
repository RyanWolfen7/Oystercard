# this class tracks a journey

class Journey

  attr_reader :entry_station, :history

  def initialize
    @entry_station = nil
    @history = []
  end

  def touch_in(station)
    @entry_station = station
  end

  def touch_out(station)
    log_trip(@entry_station, station)
    @entry_station = nil
  end

  def log_trip(station_one, station_two)
    @history << { entry: station_one, exit: station_two}
  end

end
