Feature: Ships create

Background:
	  Given a board with dimensions "5" x "5"

  Scenario: Create a small ship in a valid location
    Given I create a small ship in position "3:3"
    Then position "3:3" is not empty

  Scenario: Create a large ship in a valid location
    Given I create a large ship in position "3:3"
    Then position "3:3" is not empty
    And position "3:4" is not empty

  Scenario: Create a small ship in a invalid location
    Given I create a small ship in position "6:6"
    Then Alert invalid location "6:6"

  Scenario: Create a small ship in an used location
    Given I create a small ship in position "2:2"
    Given I create a small ship in position "2:2"
    Then Alert invalid location "2:2"
