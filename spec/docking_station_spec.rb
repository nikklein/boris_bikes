require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}

    it 'raises an error if there no bikes' do
      expect{subject.release_bike}.to raise_error 'No bikes availible'
    end

    it 'doesnt release broken bikes' do
      bike = double(:bike)
      bike.report_broken
      subject.dock bike
      expect{subject.release_bike}.to raise_error 'Bike is broken'
    end
  end

  describe '#dock' do
    it {is_expected.to respond_to(:dock).with(1).argument}

    it 'raises an error if full' do
      subject.capacity.times {subject.dock(double(:bike))}
      expect{subject.dock(double(:bike))}.to raise_error 'The dock is full'
    end
    it 'docks something' do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'returns docked bikes' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

  it {is_expected.to respond_to(:bikes)}

  it 'when capacity given, set to this capacity' do
    station = DockingStation.new(10)
    expect(station.capacity).to eq 10
  end

  it 'when no capacity given, set to default value' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
