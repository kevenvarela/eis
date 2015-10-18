require 'rspec'
require_relative "../exceptions/bussy_place_exception.rb"
require "battle_ship.rb"
require "boat.rb"
require "board.rb"

describe 'BussyPlaceException' do

  let(:exception) { BussyPlaceException.new }

  describe "matching error message with string" do
    it "matches the error message" do
      expect { raise exception, 'The place is busy!'}.
        to raise_error('The place is busy!')
    end

    it "simulates a placing scenario" do
      battle_ship = BattleShip.new(10,10)
      ship = Boat.new("Submarine", "vertically", [1,1])
      battle_ship.place(ship)

      begin
        battle_ship.place(ship)
      rescue Exception => e
        @exception = e
      end

      expect(@exception.message).to eq 'The place is bussy!'
      expect(@exception).to be_an_instance_of BussyPlaceException
    end
  end

end