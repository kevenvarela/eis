require_relative "../../lib/battle_ship.rb"
require_relative "../../lib/board.rb"
require_relative "../../lib/boat.rb"

Given(/^an empty Board of (\d+),(\d+)$/) do |arg1, arg2|
  @battle_ship = BattleShip.new(10,10)
  @board = @battle_ship.board
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
