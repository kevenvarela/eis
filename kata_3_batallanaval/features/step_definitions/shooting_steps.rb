require_relative "../../lib/battle_ship.rb"

Given(/^a Board of (\d+),(\d+)$/) do |arg1, arg2|
  @battle_ship = BattleShip.new(10,10)
end

Given(/^(\d+),(\d+) position to shoot$/) do |arg1, arg2|
  @position_to_shoot = [2,2]
end

When(/^shoot to (\d+),(\d+) position$/) do |arg1, arg2|
  @result = @battle_ship.shoot_to(@position_to_shoot)  
end

Then(/^I touch water$/) do
  expect(@result).to eq 'water'
end
