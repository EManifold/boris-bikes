require "docking_station"

describe DockingStation do

  # docking a bike
  it "returns a previously docked bike when I want to use a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

  it "docks a bike and stores it" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  # no available bikes
  describe "#release_bike" do
    it "return error if no bike available when releasing bike" do
      bike = Bike.new
      expect{subject.release_bike}.to raise_error("There are no bikes")
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  # viewing a docked bike
  it { is_expected.to respond_to(:bike) }

 end 

