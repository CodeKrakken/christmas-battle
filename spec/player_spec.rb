require 'player'

describe Player do
  subject(:caxul) { Player.new('Caxul') }

  describe "#name" do
    it 'can tell you its name' do
      expect(subject.name).to eq('Caxul')
    end
  end
end