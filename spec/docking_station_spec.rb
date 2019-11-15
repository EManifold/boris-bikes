require "docking_station"

describe DockingStation do

  # Instance of docking station responds to bikes method
  it { is_expected.to respond_to(:bikes) }

  describe "#release_bike" do
    # no available bikes
    it "return error if no bike available when releasing bike" do
      bike = Bike.new
      expect { subject.release_bike }.to raise_error("There are no bikes")
    end

    # releasing a bike
    it "returns a previously docked bike when I want to use a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end

  # docking a bike
  describe "#dock" do
    it "docks a bike and stores it" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it "docking station should raise error if docking bike when full" do
      bike = Bike.new
      subject.bikes = Array.new(20, bike)
      expect { subject.dock(bike) }.to raise_error("docking station full")
    end
  end

 end
