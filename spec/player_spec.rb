require 'player'

describe Player do
  context "#initialize" do
    it "instance is created with name" do
      player = Player.new("Tom")
      expect(player.name).to eq "Tom"
    end

  end
end
