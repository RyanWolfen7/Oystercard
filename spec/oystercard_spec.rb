require 'oystercard'

describe Oystercard do
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
    it 'expect balance to be zero' do
      subject.add_money(50)
      expect(subject.deduct_money(50)).to eq (0)
    end
  end

  describe '#journey' do
    it 'is expected to be in a journey' do
      subject.touch_in
      expect(subject).to be_in_journy
    end

    it 'is expected to be out of a journey' do
      subject.touch_in
      subject.touch_out
      expect(subject).not_to be_in_journy
    end


  end


end
