require 'game'

describe Game do
  let (:bejlo) { double :player }
  
  describe "#attack" do

    it 'damages the player' do
      expect(bejlo).to receive(:receive_damage)
      subject.attack(bejlo)
    end
  end
end