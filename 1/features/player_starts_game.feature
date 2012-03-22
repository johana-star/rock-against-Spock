Feature: player starts game

  As a player
  I want to start a game of rock-paper-scissors-lizard-Spock
  So that I can kill some time

  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to rock-paper-scissors-lizard-Spock!"
    And I should see "Throw one of the following: rock, paper, scissors, lizard, or Spock."