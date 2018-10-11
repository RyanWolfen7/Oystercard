require 'journey'


describe Journey do

  let( :station ) {double :station }

  describe '#History' do
    it 'is expected to return an array pf stations' do
      subject.touch_in(station)
      subject.touch_out(station)
      expect(subject.log).to eq subject.log
    end
  end


end
