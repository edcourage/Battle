require 'player'

describe Player do
  let(:player) {Player.new("Tom")}
  context "#initialize" do
    it "instance is created with name" do

      expect(player.name).to eq "Tom"
    end

    it "player starts with 100HP" do
      expect(player.hp).to eq 100
    end

  end

  context "#remove_hp" do
    it "10 HP is removed" do
      expect { player.remove_hp }.to change { player.hp }.by -10
    end


  end
end
