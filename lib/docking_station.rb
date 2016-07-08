require_relative 'bike'
require_relative 'van'
class DockingStation

DEFAULT_CAPACITY = 20

attr_accessor :capacity
attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    #@broken_bikes = []
  end

  def release_bike
    raise 'No bikes availible' if empty?
    raise 'Bike is broken' if bikes.last.broken?
    bikes.pop

  end

  def dock bike
    raise 'The dock is full' if full?
    #bike.broken? ? broken_bikes : bikes << bike
bikes << bike
end
#def collect_broken (van = Van.new)
#  van.collect_broken broken_bikes
#end


  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end

end
