@footer
Feature: Footer

Scenario Outline: As a user I should be able to access the links to the footer and be taken to correct page
	Given I am on the codebar homepage
	When I click on any link in the footer <footer_link>
	Then I should be directed to correct page <url>

	Examples:
	| footer_link        | url 														|
	| Code of conduct 	 | http://localhost:3000/code-of-conduct |
	| Coach guide				 | http://localhost:3000/effective-teacher-guide |
	| Student guide			 | http://localhost:3000/student-guide |
	| Tutorial 					 | http://tutorials.codebar.io/ |
	| Becoming a sponsor | http://manual.codebar.io/becoming-a-sponsor |
	| FAQ								 | http://localhost:3000/faq |
	| Blog 							 | https://medium.com/the-codelog |
	| Coaches						 | http://localhost:3000/coaches |
	| Sponsors 					 | http://localhost:3000/sponsors |
	| Events 						 | http://localhost:3000/events |
	| Jobs							 | http://localhost:3000/jobs |
	| Donate						 | http://localhost:3000/donations/new |

Scenario: As a user I can click the slack icon on the footer
	Given I am on the codebar homepage
	When I click the slack icon on the footer
	Then I should be redirected to the slack page

Scenario: As a user I can click the github icon on the footer
	Given I am on the codebar homepage
	When I click the github icon on the footer
	Then I should be redirected to the github page

Scenario: As a user I can click the twitter icon on the footer
	Given I am on the codebar homepage
	When I click the twitter icon on the footer
	Then I should be redirected to the twitter page

Scenario: As a user I can click the facebook icon on the footer
	Given I am on the codebar homepage
	When I click the facebook icon on the footer
	Then I should be redirected to the facebook page
