
class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes" if @bikes.empty?
    return @bikes[0]
    @bikes.pop
  end

  def dock(bike)
    fail "docking station full" if @bikes.length >= 19
    @bikes << bike
  end

end
