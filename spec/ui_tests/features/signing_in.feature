Feature: Signing in

Scenario: As a user with a github account I can successfully sign in
	Given I have an account
	When I sign into codebar
	And I sign in to github
	Then I can see my account dashboard
