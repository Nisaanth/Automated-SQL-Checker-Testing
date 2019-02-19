Feature: Sql Automated Checker
  As a student I want to be able to use the Sql Automated Checker

  Scenario: Student button on index page
    Given I am on the index page
    When I click on the student button
    Then I should be navigated to the student login page

  Scenario: Login credentials
    Given I am on the login page
    When I enter valid credentials
    Then I should be navigated to the questions page

  Scenario: Back button on login page
    Given I am on the login page
    When I press the back button on the login page
    Then I should be directed to the index page

  Scenario Outline: Save button on questions page
    Given I am logged in
    And I am on the questions page
    When I save each answer
    And I re-log
    Then I should be able to see saved answers in each field

    Examples:

  Scenario: Info page button
    Given I am logged in
    And I am on the questions page
    When I click on the info button
    Then I should be directed to the info page