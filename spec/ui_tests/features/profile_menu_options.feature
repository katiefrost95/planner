Feature: Menu Bar

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

# Scenario: As a user I can update my details
# 	Given I am logged in
# 	When I click on menu
# 	And I click update my details
# 	And I fill in my details with the info I want
# 	And I click save
# 	Then my details should be successfully updated

# Scenario: As a user I can unsuccessfully update my details
# 	Given I am logged in
# 	When I click on menu
# 	And I click update my details
# 	And I don’t fill in the tell me about yourself box
# 	Then I should remain on the update my details page

Scenario: As a user I can successfully manage my subscriptions
	Given I am logged in
	When I click on menu
	And I click on manage subscriptions
	And I click to subscribe to a city of my choice as a student
	Then I should successfully subscribe

Scenario: As a user I can unsubscribe from a city
	Given I am logged in
	When I click on menu
	And I click on manage subscriptions
	And I click on a city I have subscribed too as a student
	Then I should successfully unsubscribe
