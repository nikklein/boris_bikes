require 'docking_station'

describe DockingStation do


  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}

    it 'raises an error if there no bikes' do
      expect{subject.release_bike}.to raise_error 'No bikes availible'
    end
it 'doesnt release broken bikes' do
bike = Bike.new
bike.report_broken
subject.dock bike
expect{subject.release_bike}.to raise_error 'Bike is broken'
end
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

  describe '#dock' do
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'raises an error if full' do
    subject.capacity.times {subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error 'The dock is full'
    end
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
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
