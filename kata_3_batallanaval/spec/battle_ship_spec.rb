require 'rspec'
require "battle_ship.rb"
require "board.rb"

describe 'BattleShip' do

  let(:battle_ship) { BattleShip.new(10, 10) }

  describe '::initialize' do

    context 'initializes a BattleShip & Board' do
      it { expect(battle_ship.class).to be BattleShip.itself }
      it { expect(battle_ship.board.class).to be Board.itself }
    end
  end

  describe '#board_width?' do
    context 'must be eq to 10' do
      it { expect(battle_ship.board_width?).to be 10 }
    end
  end

  describe '#board_high?' do
    context 'must be eq to 10' do
      it { expect(battle_ship.board_high?).to be 10 }
    end
  end
end