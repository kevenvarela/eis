require 'rspec'
require "board.rb"

describe 'Board' do

  let(:board) { Board.new }

  describe '::initialize' do
    
    context 'initializes a Board' do
      it { expect(board.class).to eq Board.itself }
    end
  end
end