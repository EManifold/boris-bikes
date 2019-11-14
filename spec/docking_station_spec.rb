require "docking_station"

describe DockingStation do

  # it { is_expected.to respond_to :release_bike }

  it "returns a previously docked bike when I want to use a bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.release_bike).to eq(bike)
  end




  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it "docks a bike and stores it" do
    bike = Bike.new
    station = DockingStation.new
    expect(station.dock(bike)).to eq(bike)
  end

  # it "return error if no bike available when releasing bike" do
    
  #   station = DockingStation.new
  #   bike = Bike.new

  #   expect{ }.to raise_error("There are no bikes")
  # end

end 

