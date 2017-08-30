class Altfuel
  attr_reader :name, :address, :fuel_type, :access_times


  def initialize(attributes = {})
    @name = attributes[:station_name]
    @address = attributes[:street_address]
    @fuel_type = attributes[:fuel_type_code]
    @access_times = attributes[:access_days_time]
  end

  def distance

  end
end
