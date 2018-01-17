Feature: Dashboard

Scenario: As a user I can view the dashboard
	Given I am logged in
	When I click on menu
	And I click on dashboard
	Then I should be able view upcoming workshops in subscribed cities.
