require 'rspec'
require "battle_ship.rb"
require "board.rb"

describe 'BattleShip' do

  let(:battle_ship) { BattleShip.new }

  describe '::initialize' do
    
    context 'initializes a BattleShip' do
      it { expect(battle_ship.class).to eq BattleShip.itself }
    end

    context 'initializes a Board' do
      it { expect(battle_ship.board.class).to eq Board.itself }
    end
  end
end