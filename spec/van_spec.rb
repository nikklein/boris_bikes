require 'van'
require 'docking_station'
describe Van do
  it 'response to collect_broken' do
van = Van.new
expect(van).to respond_to(:collect_broken)
  end
#  it 'it should select broken bikes' do

  
end
