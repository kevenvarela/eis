require 'rspec'
require "boat.rb"

describe 'Boat' do

  let(:submarine) { Boat.new("Submarine", "vetically", [1,1]) }
  let(:destroyer) { Boat.new("Destroyer", "vetically", [1,1]) }
  let(:cruise)    { Boat.new("Cruise", "vetically", [1,1]) }

  describe '::initialize' do
    
    context 'initializes a Boat' do
      it { expect(submarine).to be_equal Boat.new("Submarine", "vetically", [1,1]) }
    end
  end
end

