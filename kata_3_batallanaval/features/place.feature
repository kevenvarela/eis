Feature: Placing
  As a gamer
  I want to place my ships

  Background:
    Given an empty Board of 10,10 

  Scenario: place my ship successfully
    Given 1,1 free position and a Submarine vertically
    When place my Submarine in 1,1 
    Then my Submarine is in 1,1

  Scenario: cant place my ship
    Given 1,1 occuped position and a Cruise horizontally
    When place my Cruise in 1,1 
    Then the place is bussy

  @wip
  Scenario: cant place my ship
   Given 10,10 free possition and a Destroyer horizontally
   When place my Destroyer in 10,10 
   Then step over the board
