require_relative "../../lib/battle_ship.rb"

#    Scenario: shoot and touch water

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

#    Scenario: shoot and touch a ship

Given(/^(\d+),(\d+) position with a Crusier horizontally$/) do |arg1, arg2|
  @position_to_shoot = [1,1]
  @cruice = @battle_ship.new_boat('Cruise', 'horizontally', @position_to_shoot)
  @battle_ship.place(@cruice)
end 

When(/^shoot to (\d+),(\d+) position with a Crusier$/) do |arg1, arg2|
  @result = @battle_ship.shoot_to(@position_to_shoot)  
end

Then(/^the ship is ok$/) do
  expect(@result).to eq true  
end

#    Scenario: shoot and sink a ship

Given(/^(\d+),(\d+) position with a Destroyer$/) do |arg1, arg2|
  @position_to_shoot = [1,1]
  @destroyer = @battle_ship.new_boat('Destroyer', 'horizontally', @position_to_shoot)
  @battle_ship.place(@destroyer)
end

When(/^shoot to (\d+),(\d+) position (\d+) times$/) do |arg1, arg2, arg3|
  @first_result  = @battle_ship.shoot_to(@position_to_shoot)  
  @second_result = @battle_ship.shoot_to([2,1])  
  @third_result  = @battle_ship.shoot_to([3,1])
  @fourth_result = @battle_ship.shoot_to(@position_to_shoot)  
end

Then(/^the ship is sink$/) do
  expect(@first_result).to eq true    
  expect(@second_result).to eq true    
  expect(@third_result).to eq true    
  expect(@fourth_result).to eq 'water'    
end
