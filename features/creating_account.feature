Feature: Signing up to the service
  In order to use chitter
  As a maker
  I want to sign up to the service

  Scenario: Signing up
    Given I am on the homepage
    When I input my email, password and password confirmation
    Then I should see "Thank you for signing up"