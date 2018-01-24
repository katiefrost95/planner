@hooks
Feature: Job Listing

  Scenario: As a user I can successfully create a job listing
  	Given I am logged in
    And I click on menu
  	When I navigate to the list a job page
  	And I fill out the details with the correct information.
    And I am taken to the preview page
  	Then I should successfully submit my job listing

  Scenario: As a user if I don’t fill in all the job listing fields, I should not be able to create a job
  	Given I am logged in
    And I click on menu
  	When I navigate to the list a job page
  	And I do not fill in all the required information
  	Then I should remain on the page when I press submit
