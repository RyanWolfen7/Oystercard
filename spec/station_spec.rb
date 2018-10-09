require 'station'

describe Station do
  it 'outputs its name' do
    thing = Station.new("Elephant & Castle" , 1)
    expect(thing.name).to eq "Elephant & Castle"
  end

  it 'outputs its zone' do
    thing = Station.new("Elephant & Castle" , 1)
    expect(thing.zone).to eq 1 
  end


end
