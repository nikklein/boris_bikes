require_relative 'bike'

class DockingStation
#raise error if bike.nil?
  attr_reader :bike

  def release_bike
raise 'No bikes availible' if @bike.nil?
      @bike
  end

  def dock bike
#raise 'No bikes availible' if @bike.nil?
    @bike = bike
  end

end
