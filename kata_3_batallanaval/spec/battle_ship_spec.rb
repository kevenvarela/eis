require 'rspec'
require "battle_ship.rb"
require "board.rb"
require "boat.rb"
require_relative "../exceptions/bussy_place_exception.rb"
require_relative "../exceptions/out_of_board_exception.rb"

describe 'BattleShip' do

  let(:battle_ship) { BattleShip.new(10, 10) }
  let(:submarine) { Boat.new("Submarine", "vertically", [1,1])}

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

  describe '#new_boat' do

    context 'initializes a Boat & returns it' do
      let(:submarine1) { battle_ship.new_boat("Submarine", "vertically", [1,1]) } 
      it { expect(submarine1).to be_equal submarine }
    end
  end

  describe '#place' do

    context 'palces a Boat' do
      it { expect(battle_ship.place(submarine)).to be_equal true }
    end

    context 'raise "The place is busy!"' do
      it 'when somebody occuped that place before' do
        battle_ship.place(submarine)
        expect{ battle_ship.place(submarine) }.
          to raise_error(BussyPlaceException, 'The place is bussy!')
      end
    end

    context 'raise "Out of board!"' do
      let(:destroyer) { battle_ship.new_boat("Destroyer", "horizontally", [9,1]) } 
      it { expect {battle_ship.place(destroyer)}.
        to raise_error(OutOfBoardException, 'Out of board!')}
    end
  end

  describe '#ships_in?' do
    it 'must return the submarine in that position' do
      battle_ship.place(submarine)
      expect(battle_ship.ship_in?([1,1])).to be submarine
    end
  end

  describe '#shoot_to' do
    let(:cruise) { battle_ship.new_boat("Cruise", "horizontally", [1,1]) }     

    context 'an empty position' do
      it {expect(battle_ship.shoot_to([2,2])).to be == 'water'}
    end

    context 'an occuped position' do
      it 'with a Cruise' do
        battle_ship.place(cruise)
        expect(battle_ship.shoot_to([1,1])).to be == true
        expect(battle_ship.shoot_to([2,1])).to be == true
        expect(battle_ship.shoot_to([3,1])).to be == 'water'
      end
    end
  end
end