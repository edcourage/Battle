require 'game'

describe Game do

  let(:player_1) { double :player }


    context "#attack_player" do
      it "remove hit points of player passed in as argument" do
        expect(player_1).to receive(:remove_hp)
        subject.attack_player(player_1)
      end
    end


end
