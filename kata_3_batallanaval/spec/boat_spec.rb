require 'rspec'
require "boat.rb"

describe 'Boat' do

  let(:submarine_v) { Boat.new("Submarine", "vertically", [1,1]) }
  let(:destroyer_v) { Boat.new("Destroyer", "vertically", [1,1]) }
  let(:cruise_v)    { Boat.new("Cruise", "vertically", [1,1]) }

  let(:submarine_h) { Boat.new("Submarine", "horizontally", [1,1]) }
  let(:destroyer_h) { Boat.new("Destroyer", "horizontally", [1,1]) }
  let(:cruise_h)    { Boat.new("Cruise", "horizontally", [1,1]) }

  describe '::initialize' do
    
    context 'initializes a Boat' do
      it { expect(submarine_v).to be_equal Boat.new("Submarine", "vertically", [1,1]) }
      it { expect(destroyer_v).to be_equal Boat.new("Destroyer", "vertically", [1,1]) }
      it { expect(cruise_v).to be_equal Boat.new("Cruise", "vertically", [1,1]) }
    end
  end

  describe '#positions?' do 
    it { expect(submarine_v.positions?).to eq [[1,1]] }
    #it { expect(destroyer_v.positions?).to eq [[1,1],[1,2],[1,3]]}
    #it { expect(cruise_v.positions?).to eq [[1,1],[1,2]] }

    it { expect(submarine_h.positions?).to eq [[1,1]] }
    #it { expect(destroyer_h.positions?).to eq [[1,1],[2,1],[3,1]] }
    #it { expect(cruise_h.positions?).to eq [[1,1],[2,1]] }
  end

end

