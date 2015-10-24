Feature: memory of the total of operations 

  Background:
    Given the calculator page

  Scenario: did not operations 
    Given non operations did
    Then the total of operations is 0

  Scenario: when operations are made increases the total
    Given make a sum with 1 and 2
    And make a subtract with 2 and 1
    And make a average with 6 and 6
    Then the total of operations is 3
  
  Scenario: when the total number of operations is restored come back to 0
    Given make a sum with 1 and 2
    And make a subtract with 2 and 1
    And restart the memory
    Then the total of operations is 0