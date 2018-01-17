Feature: Signing in

Scenario: As a user with a github account I can successfully sign in
	Given I have an account
	When I sign into codebar
	And I sign in to github
	Then I can see my account dashboard

Scenario: As a user with a github account that is not signed in I can successfully sign in
	Given I have an account
	And I am not signed into github
	When I sign into codebar
	Then I should be redirected to the github sign in page
