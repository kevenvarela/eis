require_relative "../../lib/battle_ship.rb"
require_relative "../../lib/board.rb"
require_relative "../../lib/boat.rb"
require_relative "../../exceptions/bussy_place_exception.rb"
require_relative "../../exceptions/out_of_board_exception.rb"

#   Scenario: place my ship successfully

Given(/^an empty Board of (\d+),(\d+)$/) do |arg1, arg2|
  @battle_ship = BattleShip.new(10,10)
end

Given(/^(\d+),(\d+) free position and a Submarine vertically$/) do |arg1, arg2|
  @position = [1,1]
  @submarine = @battle_ship.new_boat('Submarine', 'vertically', @position)
end

When(/^place my Submarine in (\d+),(\d+)$/) do |arg1, arg2|
  @battle_ship.place(@submarine)
end

Then(/^my Submarine is in (\d+),(\d+)$/) do |arg1, arg2|
  expect(@battle_ship.ship_in?(@position)).to be @submarine 
end

#    Scenario: cant place my ship => BussyPlaceException

Given(/^(\d+),(\d+) occuped position and a Cruise horizontally$/) do |arg1, arg2|
  @position = [1,1]
  @submarine = @battle_ship.new_boat('Submarine', 'vertically', @position)
  @battle_ship.place(@submarine)
  @cruice = @battle_ship.new_boat('Cruise', 'horizontally', @position)
end

When(/^place my Cruise in (\d+),(\d+)$/) do |arg1, arg2|
  begin
    @battle_ship.place(@cruice)
  rescue Exception => e
    @exception = e
  end
end

Then(/^the place is bussy$/) do
  expect(@exception.message).to eq 'The place is bussy!'
  expect(@exception).to be_an_instance_of BussyPlaceException
end


#   Scenario: cant place my ship => OutOfBoardException

Given(/^(\d+),(\d+) free possition and a Destroyer horizontally$/) do |arg1, arg2|
  @position = [10,10]
  @destroyer = @battle_ship.new_boat('Destroyer', 'horizontally', @position)
end

When(/^place my Destroyer in (\d+),(\d+)$/) do |arg1, arg2|
  begin
    @battle_ship.place(@destroyer)  #  => Out of board! (OutOfBoardException)
  rescue Exception => e
    @exception = e
  end
end

Then(/^step over the board$/) do
  expect(@exception.message).to eq 'Out of board!'
  expect(@exception).to be_an_instance_of OutOfBoardException
end
