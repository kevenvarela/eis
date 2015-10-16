require 'rspec'
require_relative '../lib/battle_ship'
require_relative '../lib/board'

describe 'BattleShip' do

  let(:battle_ship) { BattleShip.new([10,10]) } 
  
  describe '::initialize' do

    context "#board_size" do
  	  let(:battle_ship) { BattleShip.new([5,5]) } 
      it { expect(battle_ship.board_size?).to eq 25 }
    end

    context "#board_size" do
      it { expect(battle_ship.board_size?).to eq 100 }
    end
  end

  context "#set_ship" do
  	it{ expect(battle_ship.set_ship('Submarine', 'vertically', [1,1])).
  		to eq battle_ship.ship_in?([1,1]) }
  end

end
