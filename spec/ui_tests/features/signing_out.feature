Feature: Signing out

Scenario: As a user I can successfully sign out
	Given I am signed in
	When I click on menu
	And I click sign out
	Then i should be logged out of my account
