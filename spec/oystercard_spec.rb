require 'oystercard'

describe Oystercard do
  it { is_expected.to respond_to :add_money }

  describe '#Balance' do
    it 'should have balance of zero' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#add_money' do
    it "add money to my card" do
      subject.add_money(10)
      expect(subject.balance).to eq(10)
    end
  end


end
