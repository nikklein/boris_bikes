require_relative 'bike'

class DockingStation
#raise error if bike.nil?
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes availible' if @bikes.empty?
    @bikes.pop
  end

  def dock bike
    raise 'The dock is full' if @bikes.count >= 20
    @bikes << bike

  end
end
