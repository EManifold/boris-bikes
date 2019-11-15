
class DockingStation

  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes" if dock_empty?
    return @bikes[0]
    @bikes.pop
  end

  def dock(bike)
    fail "docking station full" if dock_full?
    @bikes << bike
  end

  # def capacity
  #   DEFAULT_CAPACITY
  # end

  private

  def dock_full?
    true if @bikes.length >= DEFAULT_CAPACITY
  end

  def dock_empty?
    true if @bikes.empty?
  end



end
