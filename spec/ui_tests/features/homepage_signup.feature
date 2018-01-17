Feature: Homepage Signup

Scenario: As a user without an account (but with github) I can sign up as a student from the homepage
	Given I am on the codebar homepage
	When I click sign up as a student
	And I click I accept the terms and eligibility
	And I authorize codebar to access my github
	Then I should be redirected to my dashboard

Scenario: As a user without an account I should be able to sign up as a coach from the homepage
	Given I am on the codebar homepage
	When I click sign up as a coach
	And I click the sign up as a coach button
	Then I should be redirected to my dashboard
