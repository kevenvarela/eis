Feature: Operaciones basicas

  Background:
    Given the calculator page

  Scenario: adding
    Given an operator 1
    And another operator 2
    When plus them
    Then the result is 3

  Scenario: subtract
    Given an operator 3
    And another operator 3
    When subtract them
    Then the result is 0

  Scenario: average
    Given an operator 6
    And another operator 12
    When average them
    Then the result is 9