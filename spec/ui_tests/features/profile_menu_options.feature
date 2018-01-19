Feature: Menu Bar

Scenario: As a user I can view the dashboard
	Given I am logged in
	When I click on menu
	And I click on dashboard
	Then I should be able view upcoming workshops in subscribed cities.

Scenario: As a user I can view my profile.
	Given I am logged in
	When I click on menu
	And I click on profile
	Then I should be able view my profile details.

Scenario: As a user I can update my details
	Given I am logged in
	When I click on menu
	And I click update my details
	And I fill in my details with the info I want
	And I click save
	Then my details should be successfully updated

Scenario: As a user I can unsuccessfully update my details
	Given I am logged in
	When I click on menu
	And I click update my details
	And I don’t fill in the tell me about yourself box
	Then I should remain on the update my details page

Scenario: As a user I can update my details
	Given I am logged in
	When I click on menu
	And I click update my details
	And I fill in my details with the info I want
	And I click save
	Then my details should be successfully updated

Scenario: As a user I can view my invitations
	Given I am logged in
	When I click on menu
	And I click on invitations
	Then I should be able to view upcoming workshops or workshops attended

Scenario: As a user I can RSVP to my invitations
  Given I am logged in
  And I am invited to an event
  And I click on menu
  When I click on invitations
  And I click attending to the workshop
  # Then I receive a message confirming my attendance
