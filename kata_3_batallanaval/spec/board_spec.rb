require 'rspec'
require "board.rb"
require "boat.rb"

describe 'Board' do

  let(:board) { Board.new(10,10) }

  describe '::initialize' do
    
    context 'initializes a Board' do
      it { expect(board.class).to be Board.itself }
    end
  end

  describe '#width?' do

    context 'must be eq to 10' do
      it { expect(board.width?).to be 10 }
    end
    
    context 'must be eq to 5' do
      let(:board) { Board.new(5,5) }
      it { expect(board.width?).to be 5 }
    end
  end

  describe '#high?' do

    context 'must be eq to 10' do
      it { expect(board.width?).to be 10 }
    end
    
    context 'must be eq to 5' do
      let(:board) { Board.new(7,5) }
      it { expect(board.width?).to be 7 }
    end
  end

  describe '#place' do

  	let (:destroyer) {Boat.new("Destroyer", "horizontally", [9,1])}
  	let (:cruise) {Boat.new("Cruise", "vertically", [1,1])}
  	let (:submarine) {Boat.new("Submarine", "vertically", [1,1])}

    context 'palces a submarine Boat' do
      it { expect(board.place(submarine)).to be_equal true }
    end

    context 'palces a destroyer Boat' do
      it { expect(board.place(destroyer)).to be_equal true }
    end

    context 'palces a cruise Boat' do
      it { expect(board.place(cruise)).to be_equal true }
    end
=begin
    context 'raise "The place is busy!"' do
      it 'when somebody occuped that place before' do
        battle_ship.place(submarine)
        expect(battle_ship.place(cruise)).
          to raise_error(Errors::BusyPlaceException)
      end
    end

    context 'raise "Out of board!"' do
      it { expect(battle_ship.place(destroyer)).
        to raise_error(Errors::OutOfBoardException)}
    end
=end
  end
end