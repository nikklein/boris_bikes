require_relative 'bike'

class DockingStation
#raise error if bike.nil?
  attr_reader :bike
def initialize
@bike = 20
end
def release_bike
raise 'No bikes availible' if @bike.nil?
      @bike
  end

  def dock bike
raise 'The dock is full' if !@bike.nil?
    @bike = bike
  end

end
