require 'rspec'
require_relative "../exceptions/out_of_board_exception.rb"
require "boat.rb"
require "board.rb"
require "battle_ship.rb"

describe 'OutOfBoardException' do

  let(:exception) { OutOfBoardException.new }

  describe "matching error message with string" do
    it "matches the error message" do
      expect { raise exception, 'Out of board!'}.
      to raise_error('Out of board!')
    end

    it "simulates a placing scenario" do
      battle_ship = BattleShip.new(10,10)
      ship = Boat.new("Destroyer", "vertically", [10,10])

      begin
        battle_ship.place(ship)
      rescue Exception => e
        @exception = e
      end

      expect(@exception.message).to eq 'Out of board!'
      expect(@exception).to be_an_instance_of OutOfBoardException
    end
  end

end