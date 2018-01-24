@donate
Feature: Donate

Scenario: As a user I should get correct error when inputting incorrect card details
	Given I am on the codebar homepage
	When I click donation
	And I input my name and dont enter how much to donate
	Then I should get the correct error
