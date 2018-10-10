require 'journey'

describe Journey do

  let( :station ) {double :station }

  describe '#History' do
    it 'is expected to return an array pf stations' do
      subject.touch_in(station)
      subject.touch_out(station)
      expect(subject.history).to eq [{:entry=> station, :exit=> station }]
    end
  end


end
