require 'rspec'
require "boat.rb"

describe 'Boat' do

  let(:submarine_v) { Boat.new("Submarine", "vertically", [1,4]) }
  let(:destroyer_v) { Boat.new("Destroyer", "vertically", [2,5]) }
  let(:cruise_v)    { Boat.new("Cruise", "vertically", [3,6]) }

  let(:submarine_h) { Boat.new("Submarine", "horizontally", [4,1]) }
  let(:destroyer_h) { Boat.new("Destroyer", "horizontally", [5,2]) }
  let(:cruise_h)    { Boat.new("Cruise", "horizontally", [6,3]) }

  describe '::initialize' do
    
    context 'initializes a Boat' do
      it { expect(submarine_v).to be_equal Boat.new("Submarine", "vertically", [1,4]) }
      it { expect(destroyer_v).to be_equal Boat.new("Destroyer", "vertically", [2,5]) }
      it { expect(cruise_v).to be_equal Boat.new("Cruise", "vertically", [3,6]) }
    end
  end

  describe '#positions' do 
    it { expect(submarine_v.positions).to eq [[1,4]] }
    it { expect(destroyer_v.positions).to eq [[2,5],[2,6],[2,7]]}
    it { expect(cruise_v.positions).to eq [[3,6],[3,7]] }

    it { expect(submarine_h.positions).to eq [[4,1]] }
    it { expect(destroyer_h.positions).to eq [[5,2],[6,2],[7,2]] }
    it { expect(cruise_h.positions).to eq [[6,3],[7,3]] }
  end

  describe '#hit' do
    context 'hitting a Cruise' do 
      it { expect(cruise_h.hit) == true}
    end
  end
end

