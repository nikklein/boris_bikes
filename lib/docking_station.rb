require_relative 'bike'

class DockingStation
#raise error if bike.nil?
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes availible' if empty?
    @bikes.pop
  end

  def dock bike
    raise 'The dock is full' if full?
    @bikes << bike

  end

private

  def empty?
    @bikes.empty?
  end
  def full?
    @bikes.count >= 20
  end

end
