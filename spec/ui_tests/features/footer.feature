@footer
Feature: Footer

Scenario: As a user I should be able to access the links to the footer and be taken to correct page
	Given I am on the codebar homepage
	When I click on any link in the footer
	Then I should be directed to correct page
