require 'rspec'
require "board.rb"

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
end