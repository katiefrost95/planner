@events
Feature: Events

  @subscribe
  Scenario: As a coach already signed in I should be able to access events page and choose to attend a workshop
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I click on events link
    And I click on a workshop
    And I click attend as coach
    And I click attend button
    Then I should receive the corresponding attend workshop message

  Scenario: As a coach already signed in I should be able to access events page and choose to attend an event
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I click on events link
    And I click on an event
    And I click attend as coach
    And I click RSVP as a coach
    Then I should receive the corresponding attend event message

  Scenario: As a coach already signed in I should be able to access a workshop from my dashboard and choose to no longer attend
	  Given I am on the codebar homepage
	  And I am subscribed as a coach to one of the locations
	  When I go to my dashboard
    And I click on a workshop I am set to attend
	  And I click the manage your invitation button
	  And I click I can no longer attend button
	  Then I should receive the corresponding message for cancelling an event

  Scenario: As a coach already signed in I should be able to access an event from my dashboard and choose to no longer attend
	  Given I am on the codebar homepage
	  And I am subscribed as a coach to one of the locations
	  When I go to my dashboard
	  And I click on an event I am set to attend
	  And I click the cancel my spot button
	  And I click ok on the alert
	  Then I should receive the corresponding message for cancelling an event
