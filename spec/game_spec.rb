require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:battle) {Game.new(player_1, player_2)}

    context "#initialize" do
      it "game is created with player 1" do
        expect(battle.players[:player_1]).to eq player_1
      end

      it "game is created with player 2" do
        expect(battle.players[:player_1]).to eq player_1
      end
    end

    context "#attack_player" do
      it "remove hit points of player passed in as argument" do
        expect(player_1).to receive(:remove_hp)
        battle.attack_player(:player_1)
      end
    end


end
