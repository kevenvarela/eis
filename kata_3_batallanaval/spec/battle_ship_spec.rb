require 'rspec'
require_relative '../lib/battle_ship'
require_relative '../lib/board'

describe 'BattleShip' do

  describe "initializing" do

    it 'when passing a matrix [5,5] then a board will be initialize with 25 cells' do
  	  battle_ship = BattleShip.new([5,5])
  	  expect(battle_ship.board_size?).to eq 25
    end
  end
end