
require 'station'
describe Station do

  let(:station) { Station.new("Liverpool st")}

  it 'tells you the name' do
    expect(station.name).to eq "Liverpool st"
  end
end
