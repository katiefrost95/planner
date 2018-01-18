# Feature: Menu Bar
#
# Scenario: As a user I can view the dashboard
# 	Given I am logged in
# 	When I click on menu
# 	And I click on dashboard
# 	Then I should be able view upcoming workshops in subscribed cities.
#
# Scenario: As a user I can view my profile.
# 	Given I am logged in
# 	When I click on menu
# 	And I click on profile
# 	Then I should be able view my profile details.
#
# Scenario: As a user I can view my invitations
# 	Given I am logged in
# 	When I click on menu
# 	And I click on invitations
# 	Then I should be able to view upcoming workshops or workshops attended

Scenario: As a user I can RSVP to my invitations
	Given I am logged in
	And I am invited to an event
	And I click on menu
	When I click on invitations
	And I click RSVP to a course
	And I click get my ticket
	Then I receive a message confirming my attendance
