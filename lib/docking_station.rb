class DockingStation

  attr_reader :bike

  def release_bike
    @bike ? @bike : (fail "There are no bikes")
  end

  def dock(bike)
    raise "docking station full"
    @bike = bike
  end

end