require 'rspec'
require_relative '../lib/board'

describe 'Board' do

  let(:board) { Board.new([10,10]) } 

  context "#size?" do
    it { expect(board.size?).to eq 100 }
  end

  context "#size?" do
    let(:board) { Board.new([5,5]) } 
    it { expect(board.size?).to eq 25 }
  end

  context "#set_ship" do
  	it{ expect(board.set_ship(5, 'vertically', [1,1])).to eq true }
  end

  describe "#ship_in?" do
    it "should return true" do
      board.set_ship(5, 'vertically', [1,1])
      expect(board.ship_in?([1,1])).to eq true
    end
  end

end
