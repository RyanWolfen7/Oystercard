require 'oystercard'

describe Oystercard do

  let( :station ) {double :station }
  it { is_expected.to respond_to :add_money }

  describe '#Balance' do
    it 'should have balance of zero' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#add_money' do
    it 'add money to my card' do
      subject.add_money(10)
      expect(subject.balance).to eq(10)
    end

    it 'has a max limit of $90' do
      subject.add_money(90)
      expect { subject.add_money(1) }.to raise_error('Max Limit')
    end
  end

  describe '#deduct_money' do
    # it 'expect balance to be zero' do
    #   subject.add_money(50)
    #   expect(subject.deduct_money(50)).to eq (0)
    # end
  end

  describe '#journey' do
    it 'is expected to be in a journey' do
      subject.instance_variable_set(:@balance, 10)
      subject.touch_in(station)
      expect(subject).to be_in_journey
    end

    it 'is expected to be out of a journey' do
      subject.instance_variable_set(:@balance, 10)
      subject.touch_in(station)
      subject.touch_out
      expect(subject).not_to be_in_journey
    end
  end

  describe '#touch in' do
    it 'is expected to fail checkin when balance < 1' do
      subject.instance_variable_set(:@balance, 0)
      expect{ subject.touch_in(station) }.to raise_error("You dont have enough")
    end

    it 'is expected to remember the station' do
      subject.instance_variable_set(:@balance, 10)
      subject.touch_in(station)
      expect(subject.entry_station).to eq station
    end
  end

  describe '#touch out' do
    it 'is expected to take money at the end of journey' do
      subject.instance_variable_set(:@balance, 10)
      expect{ subject.touch_out }.to change{ subject.balance }.by( -1 )
    end
  end


end
