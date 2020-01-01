require 'game'

describe Game do
  let (:caxul) { double :caxul }
  let (:bejlo) { double :player }
  subject(:game) { described_class.new(caxul, bejlo) }

  describe "#attack" do
    it 'damages the player' do
      expect(bejlo).to receive(:receive_damage)
      subject.attack(bejlo)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(subject.player_1).to eq(caxul)
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(subject.player_2).to eq(bejlo)
    end
  end
end