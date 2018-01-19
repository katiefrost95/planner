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

  # Scenario: As a coach already signed in I should be able to unsubscribe from a city I have subscribed too
  #   Given I am on the codebar homepage
  #   And I am subscribed as a coach to one of the locations
