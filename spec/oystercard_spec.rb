require 'oystercard'

describe Oystercard do
  describe '#Balance' do
    it 'should have balance of zero' do
      expect(subject.balance).to eq 0
    end
  end
end
