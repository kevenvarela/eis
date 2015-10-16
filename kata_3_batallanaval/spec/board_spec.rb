require 'rspec'
require "board.rb"

describe 'Board' do

  let(:board) { Board.new }

  describe '::initialize' do
    
    context 'initializes a Board' do
      it { expect(board.class).to be Board.itself }
    end
  end

  describe '#width?' do
    context 'must be eq to 10' do
      it { expect(board.width?).to be 10 }
    end
  end
end