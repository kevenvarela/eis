Feature: Shooting
  As a user that is shooting to a ship
  I want to sink a ship

  Background: 
    Given a Board of 10,10 

  Scenario: shoot and touch water
    Given 2,2 position to shoot
    When shoot to 2,2 position
    Then I touch water

  @wip
  Scenario: shoot and touch a ship
    Given 1,1 position with a Crusier
    When shoot to 1,1 position
    Then the ship is ok

  @wip
  Scenario: shoot and sink a ship
   Given 1,1 position with a ship
   When shoot to 1,1 position
   Then the ship is sink
