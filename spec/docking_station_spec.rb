require 'docking_station'

describe DockingStation do
it {is_expected.to respond_to(:release_bike)}
describe '#release_bike' do
it 'raises an error if there no bikes' do

expect{subject.release_bike}.to raise_error 'No bikes availible'
  end

end
it {is_expected.to respond_to(:dock).with(1).argument}
it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end
it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end
it {is_expected.to respond_to(:bike)}




end
