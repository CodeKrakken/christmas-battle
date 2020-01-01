require 'player'

describe Player do
  subject(:caxul) { Player.new('Caxul') }
  subject(:bejlo) { Player.new('Bejlo') }

  describe "#name" do
    it 'can tell you its name' do
      expect(caxul.name).to eq('Caxul')
    end
  end

  describe "#hit_points" do
    it 'returns the hit points' do
      expect(bejlo.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end