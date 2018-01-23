@hooks
Feature: Events

  @subscribecoach
  Scenario: As a coach already signed in I should be able to access events page and choose to attend a workshop
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I click on events link
    And I click on a workshop
    And I click attend as coach
    And I click attend workshop button
    Then I should receive the corresponding attend workshop message

  Scenario: As a coach already signed in I should be able to access events page and choose to attend an event
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I click on events link
    And I click on an event
    And I click attend as coach
    And I click RSVP as a coach
    Then I should receive the corresponding attend event message

  Scenario: As a coach already signed in I should be able to access events page and choose to attend a meeting
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I click on events link
    And I click on a meeting
    And I click attend
    Then I should receive the message for successfully attending a meeting

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

  Scenario: As a coach already signed in I should be able to access events page and choose to cancel a meeting I am set to attend
    Given I am on the codebar homepage
    And I am subscribed as a coach to one of the locations
    When I go to my dashboard
    And I click on a meeting I am set to attend
    And I click can’t make it anymore link
    Then I should receive the message for cancelling a meeting

  @subscribestudent
  Scenario: As a student already signed in I should be able to access events page and choose to attend a workshop
    Given I am on the codebar homepage
    And I am subscribed as a student to one of the locations
    When I click on events link
    And I click on a workshop
    And I click attend as student
    And I select what I intend to work on
    And I click attend button
    Then I should receive the corresponding attend workshop message

  Scenario: As a student already signed in I should be able to access events page and choose to attend an event
    Given I am on the codebar homepage
    And I am subscribed as a student to one of the locations
    When I click on events link
    And I click on an event
    And I click attend as student
    And I click RSVP as a student
    Then I should receive the corresponding attend event message

  Scenario: As a student already signed in I should be able to access a workshop I am set to attend and update notes
    Given I am on the codebar homepage
    And I am subscribed as a student to one of the locations
    When I click on events link
    And I click on a workshop I am set to attend
    And I click the manage your invitation button
    And I change what I am going to work on
    And I click update note
    Then I should receive the corresponding update workshop message

  Scenario: As a student already signed in I should be able to access a workshop from my dashboard and choose to no longer attend
    Given I am on the codebar homepage
    And I am subscribed as a student to one of the locations
    When I go to my dashboard
    And I click on a workshop I am set to attend
    And I click the manage your invitation button
    And I click I can no longer attend button
    Then I should receive the corresponding message for cancelling an event

  Scenario: As a student already signed in I should be able to access an event from my dashboard and choose to no longer attend
    Given I am on the codebar homepage
    And I am subscribed as a student to one of the locations
    When I go to my dashboard
    And I click on an event I am set to attend
    And I click the cancel my spot button
    And I click ok on the alert
    Then I should receive the corresponding message for cancelling an event
