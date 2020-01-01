require 'player'

describe Player do
  subject(:caxul) { Player.new('Caxul') }
  subject(:bejlo) { Player.new('Bejlo') }

  describe "#name" do
    it 'can tell you its name' do
      expect(caxul.name).to eq('Caxul')
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(bejlo.attack).to eq(50)
    end
  end
end