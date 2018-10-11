class JourneyLog

  attr_reader :history

  def initialize
    @history = []
  end

  def log_history(entry_station, exit_station)
    log_trip(entry_station, exit_station)
  end

  def log_trip(station_one, station_two)
    @history << { entry: station_one, exit: station_two}
  end
end
