Feature: Shoot
  Background:
    Given a board with dimensions "5" x "5"
    And a large ship in position: “3:3”

  Scenario: Shoot and hit
    Given I shoot to position “3:3”
    Then I get hit
