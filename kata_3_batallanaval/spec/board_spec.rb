require 'rspec'
require "board.rb"
require "boat.rb"
require_relative "../exceptions/bussy_place_exception.rb"
require_relative "../exceptions/out_of_board_exception.rb"

describe 'Board' do

  let(:board) { Board.new(10,10) }
  let (:destroyer) {Boat.new("Destroyer", "vertically", [9,1])}
  let (:cruise) {Boat.new("Cruise", "vertically", [1,1])}
  let (:submarine) {Boat.new("Submarine", "vertically", [1,1])}

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

    context 'palces a submarine Boat' do
      it { expect(board.place(submarine)).to be_equal true }
    end

    context 'palces a destroyer Boat' do
      it { expect(board.place(destroyer)).to be_equal true }
    end

    context 'palces a cruise Boat' do
      it { expect(board.place(cruise)).to be_equal true }
    end

    context 'raise "The place is busy!"' do
      it 'when somebody occuped that place before' do
        board.place(submarine)
        expect{board.place(cruise)}.
          to raise_error(BussyPlaceException, 'The place is bussy!')
      end
    end

    context 'raise "Out of board!"' do
      let (:destroyer) {Boat.new("Destroyer", "horizontally", [9,1])}

      it 'when somebody steps out of board' do
        expect{board.place(destroyer)}.
          to raise_error(OutOfBoardException, 'Out of board!')
      end
    end
  end
  
  describe '#ship_in?' do
    it 'for a submarine that is place in board' do
      board.place(submarine)
      expect(board.ship_in?([1,1])).to be submarine
    end

    it 'for a submarine that is not place in board' do
      expect(board.ship_in?([1,1])).to be false
    end
  end

  describe '#shoot_to' do
    context 'an empty position' do
      it { expect(board.shoot_to([2,2])).to be == 'water'}
    end
  end

end