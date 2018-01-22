Feature: chapters

@chapters_sign_out
Scenario Outline: As a user logged in I can access the chapters links from the homepage
	Given I am on the codebar homepage
	When I press link to the chapter <chapters>
  Then expect page to be the chapter <url>


  Examples:
  |  chapters   | url															 |
  |  London     |	http://localhost:3000/london     |
  |  Brighton   | http://localhost:3000/brighton   |
  |  Cambridge  | http://localhost:3000/cambridge  |

  Scenario: As a user not logged in (but with an account and logged into github) I access chapters links in homepage and sign up as a student.
  	Given I am on the codebar homepage
  	When I choose a chapter
  	And I click on sign up
  	And choose to sign up as a student
    And I authorize codebar to access my github
  	Then the website will sign me in and take me to the dashboard


  Scenario: As a user not logged in (but with an account and logged into github), I can access chapters links in homepage and sign up as a coach.
  	Given I am on the codebar homepage
  	When I choose a chapter
  	And I click on sign up
  	And I click sign up as a coach
    And I authorize codebar to access my github
  	Then the website will sign me in and take me to the dashboard
