@navbar
Feature: navbar

Scenario Outline: As a user I should be able to access the navbar links
	Given I am on the codebar homepage
	When I choose the navbar link <navbar>
	Then I am taken to the correct page <url>

  Examples:
  | navbar   | url                                  |
  | Donate   | http://localhost:3000/donations/new  |
  | Sponsors | http://localhost:3000/sponsors       |
  | Jobs     | http://localhost:3000/jobs           |
  | Coaches  | http://localhost:3000/coaches        |

Scenario: As a user when I click the codebar icon I should be redirected to the homepage

	Given I am on the codebar homepage
	When I click on the codebar icon
	Then I should be redirected to the homepage
