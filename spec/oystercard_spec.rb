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

    describe '#deduct_money' do

      it 'expect balance to be zero' do
        subject.add_money(50)
        expect(subject.deduct_money(50)).to eq (0)

      end
    end
  end




end
